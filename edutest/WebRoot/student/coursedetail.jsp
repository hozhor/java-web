<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="com.web.model.*"%>
<html>
<head>
  <title>����ѡ��ϵͳ</title>
   <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>
<body bgcolor="#e3e3e3">
<%
	Course course = (Course)request.getAttribute("course");
	%> 
<div id="content"> 
<div id="top">
<%@include file="../top.jsp" %>
</div>
<div id="left">
<%@include file="studentLeft.jsp" %>
</div>
<div id="right">
  <form action= "coursedetail.do?Cno=<%=course.getCno()%>&Tno=<%=course.getCtno()%>"" method="post">
    <h2>�ÿγ̵���ϸ��Ϣ���£�</h2>
    <hr>

    <table border="0">
      <tr>
         <td>�γ̺ţ�</td>
         <td><%=course.getCno()%></td>
      </tr>
      <tr>
         <td>�γ�����</td>
         <td><%=course.getCname()%></td>
      </tr>
      <tr>
         <td>����ѧ�ڣ�</td>
         <td><%=course.getCterm()%></td>
      </tr>
      <tr>
         <td>����רҵ��</td>
         <td><%=course.getCmajor()%></td>
      </tr>
      <tr>
         <td>ѧ ʱ��</td>
         <td><%=course.getChour()%></td>
      </tr>
      <tr>
         <td>ѧ �֣�</td>
         <td><%=course.getCcredit()%></td>
      </tr>
      
      <tr>
         <td>�γ̽��ܣ�</td>
         <td><textarea name="cIntro" rows="3" cols="20">
                <%=course.getCintro()%>
             </textarea>
         </td>
      </tr>
      <tr>
         <td>�ον�ʦ��</td>
         <td><%=course.getCtname()%></td>
      </tr>
      <tr>
         <td>ְ �ƣ�</td>
         <td><%=course.getCttitle()%></td>
      </tr>   
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>    
      <tr align="center">
         <td colspan="2">
           <input name="submit" type="submit" value="ѡ ��">
           &nbsp;&nbsp;<a href="JavaScript:window.history.back()">ȡ ��</a>   
         </td>
      </tr>
     </table>
   </form>
   

   

</body>
</html> 
