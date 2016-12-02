<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.web.model.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>更新用户</title>

   <style>
   		body{height:100%; width:100%; background:url("../images/web_login.jpg"); background-size:100%;font-family:"楷体";}
   		hr{width:60%;}
   		#submit, #reset{background:#CCC; }
   </style>
</head>
<body>
	<%
	User user = (User)request.getAttribute("user");
	%>
	<form method="POST" action="update.do">
		<input type="hidden" name="id" value="<%=user.getId()%>" />
		<table>
			<tr>
				<td>用户名</td>
				<td><input name="username" value="<%=user.getUsername()%>" /></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input name="password" value="<%=user.getPassword()%>" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="提交" /></td>
			</tr>
		</table>
	</form>
</body>
</html>