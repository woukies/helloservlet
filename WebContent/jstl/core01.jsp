<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	id ������ ����
	<c:set var="id" value="aaa"></c:set><br>
	<c:out value="${ id }"></c:out><br>
	id ������ ����
	<c:remove var="id"></c:remove><br>
	<c:out value="${ id }"></c:out><br>
</body>
</html>