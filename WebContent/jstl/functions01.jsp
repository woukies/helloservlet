<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>java 문자열 검색</p>
	<p>Hello, Java Server Pages! => ${ fn:contains("Hello, Java Server Pages!", "java") }</p>
	<p>Hello, Java Server Pages! => ${ fn:contains("Hello, Java Server Pages!", "Java") }</p>
	<p>Hello, Java Server Pages! => ${ fn:containsIgnoreCase("Hello, Java Server Pages!", "java") }</p>
	<p>Hello, Java Server Pages! => ${ fn:containsIgnoreCase("Hello, Java Server Pages!", "Java") }</p>
</body>
</html>