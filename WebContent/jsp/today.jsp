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
	<%!Date date = new Date();%>
	������
	<%=date.getYear() + 1900%>��
	<%=date.getMonth() + 1%>��
	<%=date.getDate()%>���Դϴ�.
</body>
</html>