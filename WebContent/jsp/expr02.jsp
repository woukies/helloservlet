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
		<h3>[표현식(expression)에 관한 예제]</h3>
	</center>
	<hr>
	<%!String str = "안녕하세요!";
	int a = 5, b = -5;

	public int abs(int n) {
		return n < 0 ? -n : n;
	}%>

	<%=str%>
	<br>
	<%=a%>의 절대값은
	<%=abs(a)%>
	<br>
	<%=b%>의 절대값은
	<%=abs(b)%>

</body>
</html>