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
	�Էµ� �ݾ��� <%= money.getWon() %>��<br>
	<%= money.process() %>
</body>
</html>