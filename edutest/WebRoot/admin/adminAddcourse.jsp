<%@ page contentType="text/html;charset=utf-8" %>
<%@page import="java.util.*,java.text.*,com.web.model.*" %>
<html>
<head>
   <title>学生管理系统</title>
   <style>
   		body{height:100%; width:100%; background:url("../images/web_login.jpg"); background-size:100%;font-family:"楷体";}
   		hr{width:60%;}
   		#submit, #reset{background:#CCC; }
   </style>
</head>
<body bgcolor="#E3E3E3">
  <br><br>
  <center>
<form   method="post" action="adminAddcourse.do">  
    <h2>请输入要添加课程的信息</h2>
    <hr>
    <table border="0">
      <tr>
         <td>课程 号：</td>
         <td><input type="text" name="Cno"></td>
      </tr>
      <tr>
         <td>课程 名：</td>
         <td><input type="text" name="Cname"></td>
      </tr>
      <tr>
         <td>学 期：</td>
         <td><input type="text" name="Cterm"></td>
      </tr>
      
      
      <tr>
         <td>专 业：</td>
         <td><input type="text" name="Cmajor"></td>
      </tr>
      <tr>
         <td>学 时：</td>
         <td><input type="text" name="Chour"></td>
      </tr>
      <tr>
         <td>学 分：</td>
         <td><input type="text" name="Ccredit"></td>
      </tr>
      <tr>
         <td>教师 号：</td>
         <td><input type="text" name="Tno"></td>
      </tr>
      <tr>
         <td>介 绍：</td>
         <td><input type="text" name="Cintro"></td>
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
   </center>
 </body>
</html> 
