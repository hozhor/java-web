<%@page pageEncoding="GB18030" %>
<%@page import="java.util.Date"%>
<%
	Date b=new Date();
	String datStr;
	datStr=String.format("%tY��%<tm��%<td��",b);

%>
��ǰ���ڣ�<%=datStr %>