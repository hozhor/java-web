<%@ page contentType="text/html;charset=utf-8" %>
<%@ page pageEncoding="utf-8" %>
<%@page import="java.util.*,com.web.model.*"%>
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
<%List<Student> students = (List<Student>) request.getAttribute("students");%>
   <h2>学生信息显示</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff" align="center">
    <tr><th>序号</th>
      <th>姓名</th><th>学号</th><th>性别</th><th>专业</th><th>班级</th> 
      <th>电话</th><th>邮箱</th><th colspan="2">操作</th>
    </tr>
   <%for(Student student: students){%>
    <tr>
           <td><%=student.getSno()%></td>
           <td><%=student.getSname()%></td>
           <td><%=student.getSpassword()%></td>
           <td><%=student.getSsex()%></td>
           <td><%=student.getSmajor()%></td>
           <td><%=student.getSclass()%></td>
           <td><%=student.getStel()%></td>
           <td><%=student.getSemail()%></td>
           <td><a href="adminUpdateStuInform.do?Sno=<%=student.getSno()%>">修改</a></td>
           <td><a href="adminDeleteStuInform.do?Sno=<%=student.getSno()%>" onClick="if(!confirm('确定要删除吗？'))return false;else return true;">删除</a></td>
     </tr>
     <%}%>
    </table> 
    <form action="adminAddStuInformation.jsp" method="post" name="form1">
       &nbsp;&nbsp;&nbsp;<input type="submit" value="添 加" name="submit">
    </form> 
</div>
</div>

       <div class="clear"></div>
<%@include file="../footer.jsp" %>
 </body>
</html> 
