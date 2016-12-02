package com.web.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.html.HTMLDocument.Iterator;

import com.web.model.Course;
import com.web.model.Student;
import com.web.util.DBUtil;

public class InputScore extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			System.out.println("1");
			HttpSession session  = request.getSession();
			String Tno = (String) session.getAttribute("username");		
			String Cno=request.getParameter("Cno");	
			String Cname=request.getParameter("Cname");	
			System.out.println(Cno);
			System.out.println(Cname);
			System.out.println(Tno);
			List<Student> students = new ArrayList<Student>();
			ResultSet rs = st.executeQuery("select * from student inner join stucourse on student.sno =stucourse.sno "+
					" where stucourse.tno ="+Tno+" and stucourse.cno ="+Cno);
			while(rs.next()){
				Student student = new Student();
				student.setSno(rs.getString("sno"));
				student.setSname(rs.getString("sname"));
				student.setSclass(rs.getString("sclass"));
				student.setScore(rs.getInt("score"));
				students.add(student);
			}
			request.setAttribute("students", students);
			request.setAttribute("Cno", Cno);
			request.getRequestDispatcher("inputscore.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				st.close();
			}catch(Exception e){}
			try{
				conn.close();
			}catch(Exception e){}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			System.out.println("102");
			conn = DBUtil.getConnection();
			System.out.println("103");
			st = conn.createStatement();
			System.out.println("104");

			int I=Integer.valueOf(request.getParameter("I"));
			
			List<String> Sno = new ArrayList<String>();
			//List<Integer> Score = new ArrayList<Integer>();
			
			HttpSession session1  = request.getSession();			
			Sno = (List) session1.getAttribute("Sno1");
			 String[] score = request.getParameterValues("score");
			 String[] sql = null;	
			//HttpSession session2  = request.getSession();
			//Score = (List) session2.getAttribute("Score1");
					 
			String Cno=request.getParameter("Cno");		
			System.out.println("Cno"+Cno);
			for(int i=0;i<I-1;i++){				
				String sno1 =(String)Sno.get(i);
				
				String score1 = score[i];
				int score2 = Integer.parseInt(score1);
				
				// and cno="+Cno)
			    st.execute("update stucourse set score = '" + score2 + "' where sno = " +sno1+ "  and cno="+Cno);		
			}
			response.sendRedirect("showstudentcourse.do");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try{
				st.close();
			}catch(Exception e){}
			try{
				conn.close();
			}catch(Exception e){}
		}
	}
	
}
