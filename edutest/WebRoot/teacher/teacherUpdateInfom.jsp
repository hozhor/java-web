<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.sql.*,com.web.model.*"%>
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
<%
	Teacher teacher = (Teacher)request.getAttribute("teacher");
	%>   
   
  <form action= "teacherUpdateInfom.do"  method="post">
    <h2>������Ϣ���£�</h2>
    <hr>

    <table border="0">
      <tr>
         <td>��ʦ�ţ�</td>
         <td><input type="text" name="Tno" value="<%=teacher.getTno()%>" readOnly></td>
      </tr>
      <tr>
         <td>�� ����</td>
         <td><input type="text" name="Tname" value="<%=teacher.getTname()%>" readOnly></td>
      </tr>
      <tr>
         <td>�� �룺</td>
         <td><input type="text" name="Tpassword" value="<%=teacher.getTpassword()%>" ></td>
      </tr>
      <tr>
         <td>�� ��</td>
         <td><input type="text" name="Tsex" value="<%=teacher.getTsex()%>" readOnly></td>
      </tr>
      <tr>
         <td>ְ�ƣ�</td>
         <td><input type="text" name="Ttitle" value="<%=teacher.getTtitle()%>"readOnly></td>
      </tr>
      <tr>
         <td>���ţ�</td>
         <td><input type="text" name="Tdepart" value="<%=teacher.getTdepart()%>"readOnly></td>
      </tr>
      <tr>
         <td>�� ����</td>
         <td><input type="text" name="Ttel" value="<%=teacher.getTtel()%>" ></td>
      </tr>
      <tr>
         <td>�� �䣺</td>
         <td><input type="text" name="Temail" value="<%=teacher.getTemail()%>"></td>
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
