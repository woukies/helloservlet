<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!int n = 337;

	public int getInt() {
		return n;
	}%>

	<%
		out.println(getInt());
	%>
</body>
</html>