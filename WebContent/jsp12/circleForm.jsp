<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<jsp:setProperty property="radius" name="circle"/>
	<h4>����� �Է��� �����Դϴ�.</h4>
	�������� <%= circle.getRadius() %>��
	���� ������ <%= circle.process() %>
</body>
</html>