<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="twoArray" class="question.TwoArray"></jsp:useBean>
<jsp:setProperty property="num" name="twoArray"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<%= twoArray.getNum() %>*<%= twoArray.getNum() %>는<br>
	<%= twoArray.process() %>
</body>
</html>