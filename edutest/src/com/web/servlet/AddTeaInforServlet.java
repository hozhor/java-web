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

public class AddTeaInforServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Tno = request.getParameter("Tno");
			String Tname = request.getParameter("Tname");
			String Tpassword = request.getParameter("Tpassword");			
			String Tsex = request.getParameter("Tsex");
			String Ttitle = request.getParameter("Ttitle");
			String Tdepart = request.getParameter("Tdepart");
			String Ttel = request.getParameter("Ttel");
			String Temail = request.getParameter("Temail");
			st.execute("insert into teacher (tno,tname,tpassword,tsex,ttitle,tdepart,ttel,temail) values ('" + Tno + "','" 
			+ Tname + "','" + Tpassword + "','" + Tsex + "','" + Ttitle + "','" + Tdepart + "','" + Ttel + "','" + Temail + "')");
			response.sendRedirect("adminTealist.do");
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
