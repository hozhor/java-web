package com.web.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.model.Student;
import com.web.model.Teacher;
import com.web.util.DBUtil;

public class UpdateTeaSelf extends HttpServlet {
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
			String Tno = (String) session.getAttribute("username");	
			System.out.println(Tno);
			//String Smajor = request.getParameter("Smajor");
			//String Sclass = request.getParameter("Sclass");
			ResultSet rs = st.executeQuery("select * from teacher where tno = " + Tno);
			if(rs.next()){
				Teacher teacher = new Teacher();
				teacher.setTno(rs.getString("tno"));
				teacher.setTname(rs.getString("tname"));
				teacher.setTpassword(rs.getString("tpassword"));
				teacher.setTsex(rs.getString("tsex"));
				teacher.setTtitle(rs.getString("ttitle"));
				teacher.setTdepart(rs.getString("tdepart"));
				teacher.setTtel(rs.getString("ttel"));
				teacher.setTemail(rs.getString("temail"));				
				request.setAttribute("teacher", teacher);
			}
			request.getRequestDispatcher("teacherUpdateInfom.jsp").forward(request, response);
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
			String Tno=request.getParameter("Tno");
			String Tpasssword=request.getParameter("Tpasssword");
			String Ttel = request.getParameter("Ttel");
			String Temail = request.getParameter("Temail");		
			System.out.println(Ttel);
			st.execute("update teacher set tpassword = '" + Tpasssword + "', ttel = '" + Ttel + "',temail = '" + Temail + "' where tno = " + Tno);
			//response.sendRedirect("adminStulist.do");
			response.sendRedirect("teacherRight.jsp");
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
