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

public class AddCouInforServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Cno = request.getParameter("Cno");
			String Cname = request.getParameter("Cname");
			String Cterm = request.getParameter("Cterm");			
			String Cmajor = request.getParameter("Cmajor");
			String Chour = request.getParameter("Chour");
			String Ccredit = request.getParameter("Ccredit");
			String Tno = request.getParameter("Tno");
			String Cintro = request.getParameter("Cintro");
			st.execute("insert into course (cno,cname,cterm,cmajor,chour,ccredit,tno,cintro) values ('" + Cno + "','" 
			+ Cname + "','" + Cterm + "','" + Cmajor + "','" + Chour+ "','" + Ccredit + "','" +Tno + "','" + Cintro + "')");
			response.sendRedirect("adminCourse.do");
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
