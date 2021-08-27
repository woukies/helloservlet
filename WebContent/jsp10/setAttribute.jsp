<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String ls_test="세션에 저장된 데이터가 바로 접니다! ^ㅡ^";
	session.setAttribute("Testing", ls_test);
	session.setAttribute("MyData", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[세션 값을 설정하는 예제]</h3>
	</center>
	<hr>
	세션 값을 설정하는 페이지입니다.
	<hr>
</body>
</html>