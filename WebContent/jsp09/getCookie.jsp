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
		<h3>[쿠키의 정보 얻어오는 예제]</h3>
	</center>
</body>
</html>
<%
	Cookie[] cookies = request.getCookies();

out.println("현재 설정된 쿠키의 개수: " + cookies.length);
out.println("<br><hr>");

for (int i = 0; i < cookies.length; i++) {
	out.println((i + 1) + "번째 쿠키의 이름: " + cookies[i].getName() + "<br>");
	out.println("쿠키에 설정된 값: " + cookies[i].getValue() + "<br><hr>");
}
%>