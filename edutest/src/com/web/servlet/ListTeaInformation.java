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

import com.web.model.Student;
import com.web.model.Teacher;
import com.web.util.DBUtil;

public class ListTeaInformation extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from teacher");
			List<Teacher> teachers = new ArrayList<Teacher>();
			while(rs.next()){
				Teacher teacher = new Teacher();
				teacher.setTno(rs.getString("tno"));
				teacher.setTname(rs.getString("tname"));
				teacher.setTpassword(rs.getString("tpassword"));
				teacher.setTsex(rs.getString("tsex"));
				teacher.setTtitle(rs.getString("ttitle"));
				teacher.setTdepart(rs.getString("tdepart"));
				teacher.setTtel(rs.getString("ttel"));
				teacher.setTemail(rs.getString("temail"));		
				System.out.println(rs.getString("tname"));
				teachers.add(teacher);
			}
			request.setAttribute("teachers", teachers);
			request.getRequestDispatcher("adminTealist.jsp").forward(request, response);
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
