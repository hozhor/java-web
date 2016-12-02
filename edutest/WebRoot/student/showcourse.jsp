<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
<title>学生管理系统</title>
 <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>
<body bgcolor="#e3e3e3">
<div id="content"> 
<div id="top">
<%@include file="../top.jsp" %>
</div>
<div id="left">
<%@include file="studentLeft.jsp" %>
</div>
<div id="right">
		<%List<Course> courses = (List<Course>) request.getAttribute("courses");%>
		   <h2>本学期共开设如下选修课程：</h2>
		   <hr>
		   <table border="1" width="800" bgcolor="cccfff"  align="center">
		    <tr><th>序号</th>
		      <th>课程号</th><th>课程名</th><th>开课学期</th><th>开课专业</th>
		      <th>学时</th><th>学分</th><th>任课教师</th><th>课程介绍</th>
		      <th>操作</th>
		    </tr>
		   <%
		   int i=1;
		   for(Course course: courses){%>
		    <tr>
		           <td><%=i%></td>
		           <td><%=course.getCno()%></td>
		           <td><%=course.getCname()%></td>
		           <td><%=course.getCterm()%></td>
		           <td><%=course.getCmajor()%></td>
		           <td><%=course.getChour()%></td>
		           <td><%=course.getCcredit()%></td>
		           <td><%=course.getCtno()%></td>
		            <td><%=course.getCintro()%></td> 
		           <td><a href="coursedetail.do?Cno=<%=course.getCno()%>">详细</a></td>
		           </tr>   
		    <%i++ ;}%>
		    </table>         
		  
</div>
</div>
<div class="clear"></div>
<%@include file="../footer.jsp" %>
 </body>
</html> 
