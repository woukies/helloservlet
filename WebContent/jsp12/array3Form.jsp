<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array3"></jsp:useBean>
<jsp:setProperty property="num" name="array"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	�Էµ� ������ ������ <%= array.getNum() %>��<br>
	<%= array.process() %>
</body>
</html>