<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- �޼ҵ� ������ ���𹮿����� --%>

	<%!String name = "ȫ�浿";%>
	<%
		String addr = "����� ���ı� ���̵�";
	%>
	<br> �̸�:
	<%-- ��(expression)�� �̿��ؼ� ��� --%>
	<%=name%>
	<br> �ּ�:
	<%
		out.println(addr);
	%>
	<br>
	<jsp:include page="age.jsp"></jsp:include>
</body>
</html>