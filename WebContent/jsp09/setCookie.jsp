<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	Cookie cookie = new Cookie("testCookie", "I am First Cookie!");
cookie.setMaxAge(365 * 24 * 60 * 60);
cookie.setPath("/");
response.addCookie(cookie);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��Ű�� ó�� �����ϴ� ���Դϴ�...</h2>
</body>
</html>