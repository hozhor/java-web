<%@ page contentType="text/html;charset=GB2312" %>
<%@page import="java.util.*,com.web.model.*"%>
<html>
<head>
  <title>学生管理系统</title>
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
	List<Student> students = (List<Student>) request.getAttribute("students");
	String Cno=(String)request.getAttribute("Cno");
	   List<String> Sno1=new ArrayList<String>();
	
	  out.print("100");%>
   
	 
  
  <form action= "inputscore.do"  method="post">
    <h2>本学期选修该课程的学生名单如下：</h2>
   <hr>
   <table border="1" width="800" bgcolor="cccfff"  align="center">
    <tr><th>序号</th>
      <th>学号</th><th>姓名</th><th>班级</th><th>分数</th>
    </tr>
   
    <%out.print(Cno);
    int i=1;
    for(Student student: students){%>
    <tr> 
           <td><%=i %></td>
           <td ><input type="hidden" name="Sno" value=<%=student.getSno()%>><%=student.getSno()%></td>
           <td><%=student.getSname()%></td>
           <td><%=student.getSclass()%></td>
           <td><input type="text" name="score"  value=<%=student.getScore() %>></td>
    </tr>
     <%     
          i++;        
          Sno1.add(student.getSno());         
      }         
        HttpSession session1  = request.getSession();
		session1.setAttribute("Sno1",Sno1);		
         out.print("1003");
     %>
     <input type="hidden" name="I" value=<%=i%>>
     <input type="hidden" name="Cno" value=<%=Cno%> >
    </table> 
      <tr><td>&nbsp;</td><td>&nbsp;</td></tr>    
      <tr align="center">
         <td colspan="2">
           <input name="submit" type="submit" value="提 交">
            &nbsp;&nbsp;<a href="JavaScript:window.history.back()">取 消</a>      
         </td>
      </tr>
     </table>
   </form>
   			</div>
</div>
     <div class="clear"></div>
<%@include file="../footer.jsp" %>
</body>
</body>
</html> 
