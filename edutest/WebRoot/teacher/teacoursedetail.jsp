<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
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
<%List<Student> students = (List<Student>) request.getAttribute("students");
  String Cname=(String)request.getAttribute("cname"); %>

   <h2>本学期选修该课程的学生名单如下：</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff"  align="center">
    <tr><th>序号</th>
      <th>学号</th><th>姓名</th><th>性别</th><th>专业</th>
      <th>班级</th><th>电话</th><th>邮箱</th>
    </tr>
   
    <%int i=1;
    for(Student student: students){%>
    <tr>    
           <td><%=i%></td>
           <td><%=student.getSno()%></td>
           <td><%=student.getSname()%></td>
           <td><%=student.getSsex()%></td>
           <td><%=student.getSmajor()%></td>
           <td><%=student.getSclass()%></td>
           <td><%=student.getStel()%></td>
           <td><%=student.getSemail()%></td>
    </tr>
     <%     
          i++;
      }
     %>
    </table> 
    <br><br>
    <a href="JavaScript:window.history.back()">返 回</a>
        			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
</body>
</html> 
