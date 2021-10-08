<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>[액션 태그와 표현 언어]</h3>
	<jsp:useBean id="user" class="glory.User"></jsp:useBean>
	<jsp:getProperty property="firstName" name="user"/>
	<jsp:getProperty property="lastName" name="user"/>
	<hr>
	${ user.firstName }
	${ user.lastName }
	<hr>
	<jsp:setProperty property="firstName" name="user" value="Gildong"/>
	<jsp:setProperty property="lastName" name="user" value="Hong"/>
	<jsp:getProperty property="firstName" name="user"/>
	<jsp:getProperty property="lastName" name="user"/>
	<hr>
	${ user.firstName }
	${ user.lastName }
</body>
</html>