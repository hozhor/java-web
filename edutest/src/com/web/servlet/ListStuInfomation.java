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
import com.web.model.User;
import com.web.util.DBUtil;

public class ListStuInfomation extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf8");
		response.setCharacterEncoding("utf8");
		Connection conn = null;
		Statement st = null;
		try {
			conn = DBUtil.getConnection();
			st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from student");
			List<Student> students = new ArrayList<Student>();
			while(rs.next()){
				Student student = new Student();
				student.setSno(rs.getString("sno"));
				student.setSname(rs.getString("sname"));
				student.setSpassword(rs.getString("spassword"));
				student.setSsex(rs.getString("ssex"));
				student.setSmajor(rs.getString("smajor"));
				student.setSclass(rs.getString("sclass"));
				student.setStel(rs.getString("stel"));
				student.setSemail(rs.getString("semail"));		
				System.out.println(rs.getString("sname"));
				students.add(student);
			}
			request.setAttribute("students", students);
			request.getRequestDispatcher("adminStulist.jsp").forward(request, response);
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
