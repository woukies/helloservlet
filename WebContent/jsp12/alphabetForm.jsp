<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="alphabet" class="question.Alphabet"></jsp:useBean>
<jsp:setProperty property="chr" name="alphabet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	�Էµ� ���ĺ��� <%= alphabet.getChr() %>�� <%= alphabet.process() %>
</body>
</html>