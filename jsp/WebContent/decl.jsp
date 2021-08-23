<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!String str = "Hello, Java Server Pages";

	String getString(String str) {
		return str;
	}%>
	<%
		out.println(getString(str));
	%>

</body>
</html>