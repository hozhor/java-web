<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
    <title>ѧ������ϵͳ</title>
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
   <h2>��ѧ�����е��γ̵�ѡ��������£�</h2>
   <hr>
   <table border="1" width="700" bgcolor="cccfff"  align="center">
    <tr><th>���</th>
      <th>�γ̺�</th><th>�γ���</th><th>ѧʱ</th><th>ѡ������</th><th colspan="2">����</th>
    </tr>
 <%  int i=1;
     for(Course course: courses){%>
    <tr> 
           <td><%=i%></td>
           <td><%=course.getCno()%></td>
           <td><input type="hidden" name="Cname" value=<%=course.getCname()%>><%=course.getCname()%></td>          
           <td><%=course.getChour()%></td>                  
            <td><%=course.getCpeople()%></td> 
            <td><a href="teacoursedetail.do?Cno=<%=course.getCno()%>">��ϸ��Ϣ</a></td>  
            <td><a href="inputscore.do?Cno=<%=course.getCno()%>">�Ƿ�</a></td>                     
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