<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:set var="text" value="${ fn:split('Hello, Java Server Pages!', ' ') }"></c:set>
	<c:forEach var="i" begin="0" end="${ fn:length(text) - 1 }">
		<p>text[${ i }] = ${ text[i] }</p>
	</c:forEach>
	<p><c:out value="${ fn:join(text, '-') }"></c:out> </p>
</body>
</html>