<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[��Ű�� ���� ������ ����]</h3>
	</center>
</body>
</html>
<%
	Cookie[] cookies = request.getCookies();

out.println("���� ������ ��Ű�� ����: " + cookies.length);
out.println("<br><hr>");

for (int i = 0; i < cookies.length; i++) {
	out.println((i + 1) + "��° ��Ű�� �̸�: " + cookies[i].getName() + "<br>");
	out.println("��Ű�� ������ ��: " + cookies[i].getValue() + "<br><hr>");
}
%>