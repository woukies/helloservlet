<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>----- ���� ��ȿ �ð� ���� �� -----</h4>
	<%
		int time = session.getMaxInactiveInterval() / 60;
		out.println("���� ��ȿ �ð�: " + time + "��<br>");
	%>
	<h4>----- ���� ��ȿ �ð� ���� �� -----</h4>
	<%
		session.setMaxInactiveInterval(60 * 60);
		time = session.getMaxInactiveInterval() / 60;
		out.println("���� ��ȿ �ð�: " + time + "��<br>");
	%>
</body>
</html>