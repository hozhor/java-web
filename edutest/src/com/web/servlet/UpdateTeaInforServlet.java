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

import com.web.model.Student;
import com.web.model.Teacher;
import com.web.util.DBUtil;

public class UpdateTeaInforServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			String Tno=request.getParameter("Tno");
			//String Smajor = request.getParameter("Smajor");
			//String Sclass = request.getParameter("Sclass");
			ResultSet rs = st.executeQuery("select * from teacher where tno = " + Tno);
			if(rs.next()){
				Teacher teacher = new Teacher();
				teacher.setTno(rs.getString("Tno"));
				teacher.setTname(rs.getString("Tname"));
				teacher.setTpassword(rs.getString("Tpassword"));
				teacher.setTsex(rs.getString("Tsex"));
				teacher.setTtitle(rs.getString("Ttitle"));
				teacher.setTdepart(rs.getString("Tdepart"));
				teacher.setTtel(rs.getString("Ttel"));
				teacher.setTemail(rs.getString("Temail"));
				request.setAttribute("teacher", teacher);
			}
			request.getRequestDispatcher("adminUpdateTeaInform.jsp").forward(request, response);
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
			String Ttitle = request.getParameter("Ttitle");
			String Tdepart = request.getParameter("Tdepart");		
			System.out.println(Ttitle);
			st.execute("update teacher set ttitle = '" + Ttitle + "', tdepart = '" + Tdepart + "' where tno = " + Tno);
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
