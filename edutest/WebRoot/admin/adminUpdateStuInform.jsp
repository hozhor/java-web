<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@page import="java.sql.*,com.web.model.*"%>
<html>
<head>
  <title>学生管理系统</title>
<link href="../css/style.css" type="text/css" rel="stylesheet">
</head>
<body bgcolor="#E3E3E3">
<div id="content">
<div id="top">
<%@include file="../top.jsp" %>
</div>
<div id="left">
<%@include file="adminLeft.jsp" %>
</div>
<div id="right">
<%
	Student student = (Student)request.getAttribute("student");
	%>
   
  <form action= "adminUpdateStuInform.do"  method="post">
    <h2>要修改的学生信息如下：</h2>
    <hr>

    <table border="0">
      <tr>
         <td>学 号：</td>
         <td><input type="text" name="Sno" value="<%=student.getSno()%>" readOnly></td>
      </tr>
      <tr>
         <td>姓 名：</td>
         <td><input type="text" name="Sname" value="<%=student.getSname()%>" readOnly></td>
      </tr>
      <tr>
         <td>密 码：</td>
         <td><input type="text" name="Spassword" value="<%=student.getSpassword()%>" readOnly></td>
      </tr>
      <tr>
         <td>性 别：</td>
         <td><input type="text" name="Ssex" value="<%=student.getSsex()%>" readOnly></td>
      </tr>
      <tr>
         <td>专 业：</td>
         <td><input type="text" name="Smajor" value="<%=student.getSmajor()%>"></td>
      </tr>
      <tr>
         <td>班 级：</td>
         <td><input type="text" name="Sclass" value="<%=student.getSclass()%>"></td>
      </tr>
      <tr>
         <td>电 话：</td>
         <td><input type="text" name="Stel" value="<%=student.getStel()%>" readOnly></td>
      </tr>
      <tr>
         <td>邮 箱：</td>
         <td><input type="text" name="Semail" value="<%=student.getSemail()%>" readOnly></td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td colspan="2">&nbsp;（说明：只能修改专业和班级！）</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>        
      <tr align="center">
         <td colspan="2">
           <input name="submit" type="submit" value="提 交">
           &nbsp;&nbsp;<a href="JavaScript:window.history.back()">取 消</a>    
         </td>
      </tr>
     </table>
   </form>
   </div>
   </div>
<div class="clear"></div>
<%@include file="../footer.jsp" %>
   
</body>
</html> 
