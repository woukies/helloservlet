<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<center>
		<h3>[jsp:param �׼� �±׿� ���� ����]</h3>
	</center>
	<hr>
	�� ������ yellow02.jsp �����Դϴ�.
	<br>
	<hr>
	���� �� �������� ��Ÿ�� �� ��������
	<br>
	<%=request.getParameter("url")%>�� ���� �̵��Ǿ����ϴ�.
	<hr>
	<%=request.getParameter("url")%>���� �Ѿ�� �޽���:
	<%=request.getParameter("news")%>
</body>
</html>