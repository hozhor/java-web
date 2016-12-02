<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="com.web.model.*"%>
<html>
<head>
  <title>网上选课系统</title>
   <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>
<body bgcolor="#e3e3e3">
<%
	Course course = (Course)request.getAttribute("course");
	%> 
<div id="content"> 
<div id="top">
<%@include file="../top.jsp" %>
</div>
<div id="left">
<%@include file="studentLeft.jsp" %>
</div>
<div id="right">
  <form action= "coursedetail.do?Cno=<%=course.getCno()%>&Tno=<%=course.getCtno()%>"" method="post">
    <h2>该课程的详细信息如下：</h2>
    <hr>

    <table border="0">
      <tr>
         <td>课程号：</td>
         <td><%=course.getCno()%></td>
      </tr>
      <tr>
         <td>课程名：</td>
         <td><%=course.getCname()%></td>
      </tr>
      <tr>
         <td>开课学期：</td>
         <td><%=course.getCterm()%></td>
      </tr>
      <tr>
         <td>开课专业：</td>
         <td><%=course.getCmajor()%></td>
      </tr>
      <tr>
         <td>学 时：</td>
         <td><%=course.getChour()%></td>
      </tr>
      <tr>
         <td>学 分：</td>
         <td><%=course.getCcredit()%></td>
      </tr>
      
      <tr>
         <td>课程介绍：</td>
         <td><textarea name="cIntro" rows="3" cols="20">
                <%=course.getCintro()%>
             </textarea>
         </td>
      </tr>
      <tr>
         <td>任课教师：</td>
         <td><%=course.getCtname()%></td>
      </tr>
      <tr>
         <td>职 称：</td>
         <td><%=course.getCttitle()%></td>
      </tr>   
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>    
      <tr align="center">
         <td colspan="2">
           <input name="submit" type="submit" value="选 修">
           &nbsp;&nbsp;<a href="JavaScript:window.history.back()">取 消</a>   
         </td>
      </tr>
     </table>
   </form>
   

   

</body>
</html> 
