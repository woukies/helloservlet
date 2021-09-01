<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="won2dollar" class="question.Won2dollar"></jsp:useBean>
<jsp:setProperty name="won2dollar" property="won"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다</h4>
	입력된 원화가 <%= won2dollar.getWon() %>원은
	$<%= won2dollar.process() %>
</body>
</html>