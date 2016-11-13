<%@page pageEncoding="GB18030" %>
<%@page import="java.util.Date"%>
<%
	Date b=new Date();
	String datStr;
	datStr=String.format("%tY年%<tm月%<td日",b);

%>
当前日期：<%=datStr %>