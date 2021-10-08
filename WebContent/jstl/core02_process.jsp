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
	<%
		String number = request.getParameter("number");
	%>
	<c:set var="number" value="<%= number %>"></c:set>
	<c:choose>
		<c:when test="${ number % 2 == 0 }">
			<c:out value="${ number }"></c:out>은 짝수입니다.
		</c:when>
		<c:when test="${ number % 2 == 1 }">
			<c:out value="${ number }"></c:out>은 홀수입니다.
		</c:when>
	</c:choose>
</body>
</html>