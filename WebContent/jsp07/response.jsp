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
	<%
		response.setIntHeader("Refresh", 5);
	Calendar c = Calendar.getInstance();
	String time = (c.get(Calendar.AM_PM) == 0 ? "AM " : "PM ") + c.get(Calendar.HOUR) + ":" + c.get(Calendar.MINUTE)
			+ ":" + c.get(Calendar.SECOND);
	%>
	���� �ð���
	<%=time%><br>
	<a href="response_data.jsp">Google Ȩ�������� �̵��ϱ�</a>
</body>
</html>