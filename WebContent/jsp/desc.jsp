<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[선언부(declaration)]에 대한 예제</h3>
	</center>
	<hr>
	<%!String str = "안녕하세요!";
	int a = 5, b = -5;

	public int abs(int n) {
		return n < 0 ? -n : n;
	}%>

	<%
		out.println(str + "<br>");
	out.println("|" + a + "| = " + abs(a) + "<br>");
	out.println("|" + b + "| = " + abs(b) + "<br>");
	%>
</body>
</html>