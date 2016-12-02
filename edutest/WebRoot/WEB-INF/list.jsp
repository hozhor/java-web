<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.web.model.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>查询用户</title>
    
   <style>
   		body{height:100%; width:100%; background:url("../images/web_login.jpg"); background-size:100%;font-family:"楷体";}
   		hr{width:60%;}
   		#submit, #reset{background:#CCC; }
   </style>
  </head>
  <body>
    	<%List<User> users = (List<User>) request.getAttribute("users");%>
    	<table>
    		<tr>
    			<th>ID</th>
    			<th>用户名</th>
    			<th>密码</th>
    			<th>操作</th>
    		</tr>
    		<%for(User user: users){%>
    		<tr>
    			<td><%=user.getId()%></td>
    			<td><%=user.getUsername()%></td>
    			<td><%=user.getPassword()%></td>
    			<td>
	    			<a href="update.do?id=<%=user.getId()%>">修改</a>
	    			<a href="delete.do?id=<%=user.getId()%>">删除</a>
    			</td>
    		</tr>
    		<%}%>
    	</table>
    	<p>
    	共<%=users.size()%>条记录, <a href="add.jsp">新增用户</a>
    	</p>
  </body>
</html>
