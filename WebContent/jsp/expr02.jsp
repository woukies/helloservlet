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
		<h3>[ǥ����(expression)�� ���� ����]</h3>
	</center>
	<hr>
	<%!String str = "�ȳ��ϼ���!";
	int a = 5, b = -5;

	public int abs(int n) {
		return n < 0 ? -n : n;
	}%>

	<%=str%>
	<br>
	<%=a%>�� ���밪��
	<%=abs(a)%>
	<br>
	<%=b%>�� ���밪��
	<%=abs(b)%>

</body>
</html>