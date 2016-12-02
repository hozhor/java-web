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

public class DeleteStuInforServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Sno = request.getParameter("Sno");
			st.execute("delete from student where sno = " + Sno);
			response.sendRedirect("adminStulist.do");
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
