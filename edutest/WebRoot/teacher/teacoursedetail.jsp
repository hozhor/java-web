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
<%List<Student> students = (List<Student>) request.getAttribute("students");
  String Cname=(String)request.getAttribute("cname"); %>

   <h2>��ѧ��ѡ�޸ÿγ̵�ѧ���������£�</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff"  align="center">
    <tr><th>���</th>
      <th>ѧ��</th><th>����</th><th>�Ա�</th><th>רҵ</th>
      <th>�༶</th><th>�绰</th><th>����</th>
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
    <a href="JavaScript:window.history.back()">�� ��</a>
        			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
</body>
</html> 
