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

import com.web.model.Course;
import com.web.util.DBUtil;

public class TakeCourse extends HttpServlet {	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();				
			//System.out.println(Sno);
			String Cno = request.getParameter("Cno");
			String Tno = request.getParameter("Tno");			
			HttpSession session  = request.getSession();
			String Sno = (String) session.getAttribute("username");
			System.out.println(Cno);
			boolean i=st.execute("insert stucourse(sno,cno,tno) values('" + Sno + "', '" + Cno + "', '" + Tno + "')");
			System.out.println("i:"+i);
            //request.setAttribute( "success ",i); 
            //request.getRequestDispatcher( "showcourse.jsp ").forward(request,response); 
			//response.sendRedirect("adminStulist.do");
			response.sendRedirect("showcourse.jsp");							
			//String Sclass = request.getParameter("Sclass");
			
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
