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

import com.web.model.Course;
import com.web.model.Student;
import com.web.model.Teacher;
import com.web.util.DBUtil;

public class ShowStudentCourse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			//String Tno=request.getParameter("Tno");
			HttpSession session  = request.getSession();
			String Tno = (String) session.getAttribute("username");	
			List<Course> courses = new ArrayList<Course>();
			ResultSet rs = st.executeQuery("SELECT c.cno,cname,cmajor,chour,ccredit,COUNT(stucourse.cno) FROM " +
					"stucourse RIGHT JOIN course as c ON stucourse.cno=c.cno LEFT JOIN teacher as t ON c.tno=t.tno WHERE c.tno="+Tno+" GROUP BY c.cno,cname,cmajor,chour,ccredit ORDER BY COUNT(stucourse.cno) DESC");
			while(rs.next()){
				Course course = new Course();
				course.setCno(rs.getString("cno"));
				course.setCname(rs.getString("cname"));
				course.setChour(rs.getInt("chour"));
				course.setCpeople(rs.getInt("COUNT(stucourse.cno)"));
				courses.add(course);
			}	
			request.setAttribute("courses", courses);
					

			request.getRequestDispatcher("showstudentcourse.jsp").forward(request, response);
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
