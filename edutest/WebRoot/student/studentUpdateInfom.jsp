<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*,com.web.model.*"%>
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
<%
	Student student = (Student)request.getAttribute("student");
	%>   

  <form action= "studentUpdateInfom.do"  method="post">
    <h2>������Ϣ���£�</h2>
    <hr>

    <table border="0">
      <tr>
         <td>ѧ �ţ�</td>
         <td><input type="text" name="Sno" value="<%=student.getSno()%>" readOnly></td>
      </tr>
      <tr>
         <td>�� ����</td>
         <td><input type="text" name="Sname" value="<%=student.getSname()%>" readOnly></td>
      </tr>
      <tr>
         <td>�� �룺</td>
         <td><input type="text" name="Spassword" value="<%=student.getSpassword()%>" ></td>
      </tr>
      <tr>
         <td>�� ��</td>
         <td><input type="text" name="Ssex" value="<%=student.getSsex()%>" readOnly></td>
      </tr>
      <tr>
         <td>ר ҵ��</td>
         <td><input type="text" name="Smajor" value="<%=student.getSmajor()%>"readOnly></td>
      </tr>
      <tr>
         <td>�� ����</td>
         <td><input type="text" name="Sclass" value="<%=student.getSclass()%>"readOnly></td>
      </tr>
      <tr>
         <td>�� ����</td>
         <td><input type="text" name="Stel" value="<%=student.getStel()%>" ></td>
      </tr>
      <tr>
         <td>�� �䣺</td>
         <td><input type="text" name="Semail" value="<%=student.getSemail()%>"></td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
      <tr><td colspan="2">&nbsp;��˵����ֻ���޸����롢�绰�����䣡��</td></tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>    
      <tr align="center">
         <td colspan="2">
           <input name="submit" type="submit" value="�� ��">
            &nbsp;&nbsp;<a href="JavaScript:window.history.back()">ȡ ��</a>      
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
