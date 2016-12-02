<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*,com.web.model.*"%>
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
<%
	Teacher teacher = (Teacher)request.getAttribute("teacher");
	%>   
   
  <form action= "teacherUpdateInfom.do"  method="post">
    <h2>个人信息如下：</h2>
    <hr>

    <table border="0">
      <tr>
         <td>教师号：</td>
         <td><input type="text" name="Tno" value="<%=teacher.getTno()%>" readOnly></td>
      </tr>
      <tr>
         <td>姓 名：</td>
         <td><input type="text" name="Tname" value="<%=teacher.getTname()%>" readOnly></td>
      </tr>
      <tr>
         <td>密 码：</td>
         <td><input type="text" name="Tpassword" value="<%=teacher.getTpassword()%>" ></td>
      </tr>
      <tr>
         <td>性 别：</td>
         <td><input type="text" name="Tsex" value="<%=teacher.getTsex()%>" readOnly></td>
      </tr>
      <tr>
         <td>职称：</td>
         <td><input type="text" name="Ttitle" value="<%=teacher.getTtitle()%>"readOnly></td>
      </tr>
      <tr>
         <td>部门：</td>
         <td><input type="text" name="Tdepart" value="<%=teacher.getTdepart()%>"readOnly></td>
      </tr>
      <tr>
         <td>电 话：</td>
         <td><input type="text" name="Ttel" value="<%=teacher.getTtel()%>" ></td>
      </tr>
      <tr>
         <td>邮 箱：</td>
         <td><input type="text" name="Temail" value="<%=teacher.getTemail()%>"></td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td colspan="2">&nbsp;（说明：只能修改密码、电话和邮箱！）</td></tr>
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
