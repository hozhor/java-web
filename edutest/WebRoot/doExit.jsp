<%@ page contentType="text/html;charset=GB2312" %>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
     <title>学生管理系统</title>
   <style>
   		body{height:100%; width:100%; background:url("../images/web_login.jpg"); background-size:100%;font-family:"楷体";}
   		hr{width:60%;}
   		#submit, #reset{background:#CCC; }
   </style>
</head>
<body>
 <%
   //session.removeAttribute("name");
   session.invalidate();
   response.sendRedirect("login1.jsp");
 %>
</body>
</html>
