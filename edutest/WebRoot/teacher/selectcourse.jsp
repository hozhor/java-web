<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
     <title>ѧ������ϵͳ</title>
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
<h2>���Գɼ�¼��</h2>
<hr>
  <form action="inputscore.do" method="post">
     ��ѡ��γ���:
       <select name="Cname">
  <%
         for(Course course: courses){
  %>             		
           <option value="<%=course.getCno()%>" name="Cname"><%=course.getCname()%></option>
           
       </select>
 <%} %> 
      <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="submit" value="�ύ" name="submit">      
  </form> 
     			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
</body>
</html>
