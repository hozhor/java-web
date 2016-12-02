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
<%List<Teacher> teachers = (List<Teacher>) request.getAttribute("teachers");%>
   <h2>学生信息显示</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff" align="center">
    <tr><th>序号</th>
      <th>学号</th><th>姓名</th><th>性别</th><th>职称</th><th>部门</th> 
      <th>电话</th><th>邮箱</th><th colspan="2">操作</th>
    </tr>
   <%for(Teacher teacher: teachers){%>
    <tr>
           <td><%=teacher.getTno()%></td>
           <td><%=teacher.getTname()%></td>
           <td><%=teacher.getTpassword()%></td>
           <td><%=teacher.getTsex()%></td>
           <td><%=teacher.getTtitle()%></td>
           <td><%=teacher.getTdepart()%></td>
           <td><%=teacher.getTtel()%></td>
           <td><%=teacher.getTemail()%></td>
           <td><a href="adminUpdateTeaInform.do?Tno=<%=teacher.getTno()%>">修改</a></td>
           <td><a href="adminDeleteTeaInform.do?Tno=<%=teacher.getTno()%>" onClick="if(!confirm('确定要删除吗？'))return false;else return true;">删除</a></td>
     </tr>
     <%}%>
    </table> 
    <form action="adminAddTeaInformation.jsp" method="post" name="form1">
       &nbsp;&nbsp;&nbsp;<input type="submit" value="添 加" name="submit">
    </form> 
   </div>
   </div>
   
        <div class="clear"></div>
<%@include file="../footer.jsp" %>
 </body>
</html> 
