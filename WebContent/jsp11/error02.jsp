<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>
<!--
���� ����������(500) �߻��� �߰�
response.setStatus(HttpServletResponse.SC_OK)
���� ������ ���� �߻�
�ܺ� ������(ũ��)�� �۵��� ������ ��

2xx: ����
3xx: ������ �̵�
4xx: ������ ����
5xx: ���� ����
-->
<% response.setStatus(HttpServletResponse.SC_OK); %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	���� �߻�<br>
	<%= exception.getMessage() %>
</body>
</html>