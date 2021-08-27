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
	<%@ include file="h01.jsp"%>
	<%!Calendar c = Calendar.getInstance();

	public String tomorrow() {
		c.add(Calendar.DATE, 1);
		return c.get(Calendar.YEAR) + "-" + (c.get(Calendar.MONTH) + 1) + "-" + c.get(Calendar.DATE);
	}%>
	<%=tomorrow()%>
</body>
</html>