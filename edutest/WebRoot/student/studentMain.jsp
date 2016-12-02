<%@ page contentType="text/html;charset=GB2312" %>
<%@ page pageEncoding="utf-8" %>
<html>
<head>
   <title>学生管理系统</title>
 <link href="../css/style.css" type="text/css" rel="stylesheet"> 
</head>

<body>
			<div id="top">
			<%@include file="../top.jsp" %>
			</div>
<div id="content">

			<div id="left">
			<%@include file="studentLeft.jsp" %>
			</div>
			<div id="right">
			<%@include file="studentRight.jsp" %>
			</div>
</div>
<div class="clear"></div>
<%@include file="../footer.jsp" %>

</body>
</html>
