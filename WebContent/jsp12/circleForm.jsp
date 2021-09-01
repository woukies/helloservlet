<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<jsp:setProperty property="radius" name="circle"/>
	<h4>당신이 입력한 정보입니다.</h4>
	반지름이 <%= circle.getRadius() %>인
	원의 면적은 <%= circle.process() %>
</body>
</html>