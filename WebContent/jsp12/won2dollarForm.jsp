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
	<h4>����� �Է��� �����Դϴ�</h4>
	�Էµ� ��ȭ�� <%= won2dollar.getWon() %>����
	$<%= won2dollar.process() %>
</body>
</html>