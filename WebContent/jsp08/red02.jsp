<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="red">
	<center>
		<h3>[jsp:param �׼� �±׿� ���� ����]</h3>
	</center>
	<hr>
	�� ������ red02.jsp �Դϴ�
	<br> �� �������� ������ ���������� ��Ÿ�����?
	<br> �� �������� ������ ��������� ��Ÿ�����?
	<br> forward �׼� �±װ� ����Ǹ� �� �������� ������ ��µ��� �ʽ��ϴ�.
	<jsp:forward page="yellow02.jsp">
		<jsp:param value="red02.jsp" name="url" />
		<jsp:param value="Happy New Year!" name="news" />
	</jsp:forward>
</body>
</html>