<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="season" class="question.Season"></jsp:useBean>
<jsp:setProperty property="month" name="season"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�.</h4>
	�Էµ� ������ <%= season.getMonth() %>��
	������ <%= season.process() %>
</body>
</html>