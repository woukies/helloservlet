<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String ls_test="���ǿ� ����� �����Ͱ� �ٷ� ���ϴ�! ^��^";
	session.setAttribute("Testing", ls_test);
	session.setAttribute("MyData", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[���� ���� �����ϴ� ����]</h3>
	</center>
	<hr>
	���� ���� �����ϴ� �������Դϴ�.
	<hr>
</body>
</html>