<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.*,java.text.*,com.web.model.*" %>
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
<form   method="post" action="adminAddTeaInformation.do">  
    <h2>请输入要添加教师的信息</h2>
    <hr>
    <table border="0">
      <tr>
         <td>学 号：</td>
         <td><input type="text" name="Tno"></td>
      </tr>
      <tr>
         <td>姓 名：</td>
         <td><input type="text" name="Tname"></td>
      </tr>
      <tr>
         <td>密 码：</td>
         <td><input type="text" name="Tpassword"></td>
      </tr>
      <tr>
         <td>性 别：</td>
         <td><input type="radio" name="Tsex" value="男" checked>男
             <input type="radio" name="Tsex" value="女">女
         </td>
      </tr>
      <tr>
         <td>职称：</td>
         <td><input type="text" name="Ttitle"></td>
      </tr>
      <tr>
         <td>部门：</td>
         <td><input type="text" name="Tdepart"></td>
      </tr>
      <tr>
         <td>电 话：</td>
         <td><input type="text" name="Ttel"></td>
      </tr>
      <tr>
         <td>邮 箱：</td>
         <td><input type="text" name="Temail"></td>
      </tr>
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>    
      <tr align="center">
         <td colspan="2">
         
           <input name="submit" type="submit" value="提 交">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="reset" type="reset" value="重 置">                
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
