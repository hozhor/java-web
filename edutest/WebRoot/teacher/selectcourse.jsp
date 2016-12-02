<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
     <title>学生管理系统</title>
     <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>

<body>
<div id="content">
			<div id="top">
			<%@include file="../top.jsp" %>
			</div>
			<div id="left">
			<%@include file="teacherLeft.jsp" %>
			</div>
			<div id="right">
<%List<Course> courses = (List<Course>) request.getAttribute("courses");%>
<h2>考试成绩录入</h2>
<hr>
  <form action="inputscore.do" method="post">
     请选择课程名:
       <select name="Cname">
  <%
         for(Course course: courses){
  %>             		
           <option value="<%=course.getCno()%>" name="Cname"><%=course.getCname()%></option>
           
       </select>
 <%} %> 
      <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="提交" name="submit">      
  </form> 
     			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
</body>
</html>
