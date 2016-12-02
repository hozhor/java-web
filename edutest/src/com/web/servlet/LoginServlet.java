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

import com.web.model.Login;
import com.web.model.Student;
import com.web.util.DBUtil;

public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		String sql=null;
		ResultSet rs=null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String userKind=request.getParameter("kind");
			System.out.println(userKind);
			String Lusername = request.getParameter("lusername");			
			String Lpassword = request.getParameter("lpassword");
			HttpSession session  = request.getSession();
			session.setAttribute("username",Lusername);
			 if(userKind.equals("admin")){
		         sql="select * from login where lusername='"+Lusername+"' and lpassword='"+Lpassword+"'";
		         rs=st.executeQuery(sql);
		             System.out.println("0");
		         if(rs.next()){
		        	 System.out.println("1");
		            response.sendRedirect("admin/adminMain.jsp");
		            return;
		         }
		      }else if(userKind.equals("teacher")){
		         sql="select * from teacher where tno='"+Lusername+"'and tpassword='"+Lpassword+"'";
		         rs=st.executeQuery(sql);
		         if(rs.next()){
		            response.sendRedirect("teacher/teacherMain.jsp");
		            return;
		         }
		      }else if(userKind.equals("student")){
		         sql="select * from student where sno='"+Lusername+"' and spassword='"+Lpassword+"'";
		         rs=st.executeQuery(sql);
		         if(rs.next()){
		            response.sendRedirect("student/studentMain.jsp");
		            return;
		         }
		      }
		      response.sendRedirect("login1.jsp");	
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
