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

import com.web.model.Course;
import com.web.model.Student;
import com.web.util.DBUtil;

public class ListCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from course");
			List<Course> courses = new ArrayList<Course>();
			while(rs.next()){
				Course course = new Course();
				course.setCno(rs.getString("cno"));
				course.setCname(rs.getString("cname"));
				course.setCterm(rs.getString("cterm"));
				course.setCmajor(rs.getString("cmajor"));
				course.setChour(rs.getInt("chour"));
				course.setCcredit(rs.getInt("ccredit"));
				course.setCtno(rs.getString("tno"));
				course.setCintro(rs.getString("cintro"));						
				courses.add(course);
			}
			request.setAttribute("courses", courses);
			request.getRequestDispatcher("adminCourse.jsp").forward(request, response);
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
