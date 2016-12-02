<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head> 
    <title>学生管理系统</title>  
<link href="css/login.css" type="text/css" rel="stylesheet"> 
</head> 
<body> 
<div class="login">
    <div class="message">教学管理系统</div>
    <div id="darkbannerwrap"></div>
    
    <form action="login1.do" method="post" name="form1" onsubmit="return check()">
		<input name="action" value="login" type="hidden">
		<input name="lusername" placeholder="用户名" required type="text">
		<hr class="hr15">
		<input name="lpassword" placeholder="密码" required type="password">
		<hr class="hr15">
		<input value="登录" style="width:100%;" type="submit">
		<hr class="hr20">
        请用户选择：&nbsp;&nbsp;&nbsp; <input type="radio" name="kind" value="admin" checked>管理员 &nbsp;&nbsp;&nbsp;    
            <input type="radio" name="kind" value="teacher" checked>教师&nbsp;&nbsp;&nbsp;
            <input type="radio" name="kind" value="student"  checked>学生
		<hr class="hr15">
	</form>

	
</div>


<script type="text/javascript">
function check(){
   if(form1.Lusername.value==""||form1.Lpassword.value==""){
    alert("用户名或密码不允许为空!");
    form1.Lusername.focus();
    return false;
        }
       return true;
  }
  </script>
</body>
</html>