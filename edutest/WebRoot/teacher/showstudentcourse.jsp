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
<%List<Course> courses = (List<Course>) request.getAttribute("courses");%>
   <h2>本学期您承担课程的选课情况如下：</h2>
   <hr>
   <table border="1" width="700" bgcolor="cccfff"  align="center">
    <tr><th>序号</th>
      <th>课程号</th><th>课程名</th><th>学时</th><th>选课人数</th><th colspan="2">操作</th>
    </tr>
 <%  int i=1;
     for(Course course: courses){%>
    <tr> 
           <td><%=i%></td>
           <td><%=course.getCno()%></td>
           <td><input type="hidden" name="Cname" value=<%=course.getCname()%>><%=course.getCname()%></td>          
           <td><%=course.getChour()%></td>                  
            <td><%=course.getCpeople()%></td> 
            <td><a href="teacoursedetail.do?Cno=<%=course.getCno()%>">详细信息</a></td>  
            <td><a href="inputscore.do?Cno=<%=course.getCno()%>">登分</a></td>                     
    </tr>
  <%   
        i++;
      }
  %>
    </table>  
       			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
 </body>
</html>