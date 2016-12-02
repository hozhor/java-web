package com.web.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.model.Student;
import com.web.util.DBUtil;

public class UpdateSelfStuInform extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			HttpSession session  = request.getSession();
			String Sno = (String) session.getAttribute("username");	
			System.out.println(Sno);
			//String Smajor = request.getParameter("Smajor");
			//String Sclass = request.getParameter("Sclass");
			ResultSet rs = st.executeQuery("select * from student where sno = " + Sno);
			if(rs.next()){
				Student student = new Student();
				student.setSno(rs.getString("sno"));
				student.setSname(rs.getString("sname"));
				student.setSpassword(rs.getString("spassword"));
				student.setSsex(rs.getString("ssex"));
				student.setSmajor(rs.getString("smajor"));
				student.setSclass(rs.getString("sclass"));
				student.setStel(rs.getString("stel"));
				student.setSemail(rs.getString("semail"));				
				request.setAttribute("student", student);
			}
			request.getRequestDispatcher("studentUpdateInfom.jsp").forward(request, response);
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
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Sno=request.getParameter("Sno");
			String Spasssword=request.getParameter("Spassword");
			String Stel = request.getParameter("Stel");
			String Semail = request.getParameter("Semail");		
			System.out.println(Stel);
			st.execute("update student set spassword = '" + Spasssword + "', stel = '" + Stel + "',semail = '" + Semail + "' where sno = " + Sno);
			//response.sendRedirect("adminStulist.do");
			response.sendRedirect("studentRight.jsp");
			//RequestDispatcher dispatcher = request.getRequestDispatcher("studentMain.jsp");
			//dispatcher .forward(request, response);
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
