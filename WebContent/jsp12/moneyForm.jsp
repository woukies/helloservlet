<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="money" class="question.Money"></jsp:useBean>
<jsp:setProperty property="won" name="money"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 금액이 <%= money.getWon() %>는<br>
	<%= money.process() %>
</body>
</html>