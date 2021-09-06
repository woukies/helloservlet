<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array4"></jsp:useBean>
<jsp:setProperty property="num" name="array"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 정수의 갯수는 <%= array.getNum() %>는<br>
	<%= array.process() %>
</body>
</html>