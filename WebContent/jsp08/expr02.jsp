<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
Calendar c = Calendar.getInstance();
%>
<%
c.add(Calendar.MONTH, 1);
%>
<%= c.getTime() %>
</body>
</html>