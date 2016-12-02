package com.web.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.web.model.Course;
import com.web.model.Student;
import com.web.util.DBUtil;

public class CourseDetail extends HttpServlet {
	
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
				System.out.println(Cno);
				//String Sclass = request.getParameter("Sclass");
				ResultSet rs = st.executeQuery("select * from course inner join teacher on course.tno=teacher.tno where course.cno = " + Cno);
				if(rs.next()){
					Course course = new Course();
					course.setCno(rs.getString("cno"));
					course.setCname(rs.getString("cname"));
					course.setCterm(rs.getString("cterm"));
					course.setCmajor(rs.getString("cmajor"));
					course.setChour(rs.getInt("chour"));
					course.setCcredit(rs.getInt("ccredit"));
					course.setCtno(rs.getString("tno"));
					course.setCintro(rs.getString("cintro"));
					course.setCttitle(rs.getString("ttitle"));
					course.setCtname(rs.getString("tname"));
					request.setAttribute("course", course);
				}
				request.getRequestDispatcher("coursedetail.jsp").forward(request, response);
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
				HttpSession session  = request.getSession();
				String Sno = (String) session.getAttribute("username");								
				String Cno=request.getParameter("Cno");
				String Tno=request.getParameter("Tno");
				//String Tno=(String) request.getAttribute("Tno");	
				System.out.println("Tno"+Tno);
				st.execute("insert stucourse(sno,cno,tno) values('" + Sno + "', '" + Cno + "', '" + Tno + "')");
				//response.sendRedirect("adminStulist.do");
				response.sendRedirect("showcourse.do");
				//RequestDispatcher dispatcher = request.getRequestDispatcher("studentMain.jsp");
				//dispatcher .forward(request, response);
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


