package com.web.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.web.util.DBUtil;

public class AddStuInforServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Sno = request.getParameter("Sno");
			String Sname = request.getParameter("Sname");
			String Spassword = request.getParameter("Spassword");			
			String Ssex = request.getParameter("Ssex");
			String Smajor = request.getParameter("Smajor");
			String Sclass = request.getParameter("Sclass");
			String Stel = request.getParameter("Stel");
			String Semail = request.getParameter("Semail");
			st.execute("insert into student (sno,sname,spassword,ssex,sclass,smajor,stel,semail) values ('" + Sno + "','" 
			+ Sname + "','" + Spassword + "','" + Ssex + "','" + Sclass+ "','" + Smajor + "','" +Stel + "','" + Semail + "')");
			response.sendRedirect("adminStulist.do");
			return;
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


