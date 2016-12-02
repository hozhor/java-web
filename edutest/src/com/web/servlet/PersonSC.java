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
import com.web.util.DBUtil;

public class PersonSC extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;		
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			HttpSession session  = request.getSession();
			String Sno = (String) session.getAttribute("username");
			 System.out.println(Sno);
			ResultSet rs = st.executeQuery("select * from stucourse inner join course as c on stucourse.cno=c.cno inner join teacher as t on c.tno=t.tno where sno="+Sno);		
			List<Course> courses = new ArrayList<Course>();
			while(rs.next()){
				Course course = new Course();
				String Cno=rs.getString("cno");
				course.setCno(Cno);				
				course.setCname(rs.getString("cname"));
				course.setChour(rs.getInt("chour"));
				course.setCcredit(rs.getInt("ccredit"));
				course.setCtname(rs.getString("tname"));				
				courses.add(course);
			}
			request.setAttribute("courses", courses);
			request.getRequestDispatcher("personsc.jsp").forward(request, response);
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
