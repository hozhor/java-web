<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
<title>ѧ������ϵͳ</title>
 <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>
<body bgcolor="#e3e3e3">
<div id="content"> 
<div id="top">
<%@include file="../top.jsp" %>
</div>
<div id="left">
<%@include file="studentLeft.jsp" %>
</div>
<div id="right">
<%List<Course> courses = (List<Course>) request.getAttribute("courses");%>
   <h2>��ѧ����ѡ�޵Ŀγ���Ϣ���£�</h2>
   <hr>
   <table border="1" width="600" bgcolor="cccfff"  align="center">
    <tr><th>���</th>
      <th>�γ̺�</th><th>�γ���</th><th>ѧʱ</th><th>ѧ��</th>
      <th>�ον�ʦ</th>
    </tr>
   <% int i=1;
   for(Course course: courses){%>
    <tr>
           <td><%=i%></td>
           <td><%=course.getCno()%></td>
           <td><%=course.getCname()%></td>
           <td><%=course.getChour()%></td>
           <td><%=course.getCcredit()%></td>
           <td><%=course.getCtname()%></td>
          
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
