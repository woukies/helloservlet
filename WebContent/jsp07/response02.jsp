<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>�� �������� 1�ʸ��� ���ΰ�ħ �˴ϴ�.</p>
	<%
		response.setIntHeader("Refresh", 1);
	%>
	<p>
		<%=new Date()%>
	</p>
</body>
</html>