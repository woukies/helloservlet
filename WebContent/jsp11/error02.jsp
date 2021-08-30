<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<!--
내부 페이지오류(500) 발생시 추가
response.setStatus(HttpServletResponse.SC_OK)
내부 브라우저 사용시 발생
외부 브라우저(크롬)은 작동함 이유는 모름

2xx: 정상
3xx: 페이지 이동
4xx: 브라우저 오류
5xx: 서버 오류
-->
<% response.setStatus(HttpServletResponse.SC_OK); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	에러 발생<br>
	<%= exception.getMessage() %>
</body>
</html>