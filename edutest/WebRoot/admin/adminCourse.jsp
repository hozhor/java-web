<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
  <title>学生管理系统</title>
   <style>
   		body{height:100%; width:100%; background:url("../images/web_login.jpg"); background-size:100%;font-family:"楷体";}
   		hr{width:60%;}
   		#submit, #reset{background:#CCC; }
   </style>
</head>
<body bgcolor="#E3E3E3"><center>
<%List<Course> courses = (List<Course>) request.getAttribute("courses");%>
   <h2>学生信息显示</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff" align="center">
    <tr>
      <th>课程序号</th><th>课程名</th><th>学期</th><th>专业</th><th>学时</th> 
      <th>学分</th><th>教室号</th><th>介绍</th>
    </tr>
   <%for(Course course: courses){%>
    <tr>
           
           <td><%=course.getCno()%></td>
           <td><%=course.getCname()%></td>
           <td><%=course.getCterm()%></td>
           <td><%=course.getCmajor()%></td>
           <td><%=course.getChour()%></td>
           <td><%=course.getCcredit()%></td>
           <td><%=course.getCtno()%></td>        
            <td><%=course.getCintro()%></td> 
     </tr>
     <%}%>
    </table> 
    <form action="adminAddcourse.jsp" method="post" name="form1">
       &nbsp;&nbsp;&nbsp;<input type="submit" value="添 加" name="submit">
    </form> 
   </center>
 </body>
</html> 
