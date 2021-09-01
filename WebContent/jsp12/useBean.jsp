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
	<h4>원의 면적 출력하기</h4>
	<jsp:setProperty property="radius" name="circle" value="10"/>
	반지름이 <jsp:getProperty property="radius" name="circle"/>인 원의 면적은 <%= circle.process() %>
</body>
</html>