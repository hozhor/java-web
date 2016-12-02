<%@ page contentType="text/html;charset=utf-8" %>
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
	Teacher teacher = (Teacher)request.getAttribute("teacher");
	%>
   <center>
  <form action= "adminUpdateTeaInform.do"  method="post">
    <h2>要修改的教师信息如下：</h2>
    <hr>

    <table border="0">
      <tr>
         <td>学 号：</td>
         <td><input type="text" name="Tno" value="<%=teacher.getTno()%>" readOnly></td>
      </tr>
      <tr>
         <td>姓 名：</td>
         <td><input type="text" name="Tname" value="<%=teacher.getTname()%>" readOnly></td>
      </tr>
      <tr>
         <td>密 码：</td>
         <td><input type="text" name="Tpassword" value="<%=teacher.getTpassword()%>" readOnly></td>
      </tr>
      <tr>
         <td>性 别：</td>
         <td><input type="text" name="Tsex" value="<%=teacher.getTsex()%>" readOnly></td>
      </tr>
      <tr>
         <td>专 业：</td>
         <td><input type="text" name="Ttitle" value="<%=teacher.getTtitle()%>"></td>
      </tr>
      <tr>
         <td>班 级：</td>
         <td><input type="text" name="Tdepart" value="<%=teacher.getTdepart()%>"></td>
      </tr>
      <tr>
         <td>电 话：</td>
         <td><input type="text" name="Ttel" value="<%=teacher.getTtel()%>" readOnly></td>
      </tr>
      <tr>
         <td>邮 箱：</td>
         <td><input type="text" name="Temail" value="<%=teacher.getTemail()%>" readOnly></td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td colspan="2">&nbsp;（说明：只能修改职称和部门）</td></tr>
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
