<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="evenNumber" class="question.EvenNumber"></jsp:useBean>
<jsp:setProperty property="num" name="evenNumber"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	�Էµ� ������ <%= evenNumber.getNum() %>�� ¦������ �հ�� <%= evenNumber.process() %>
</body>
</html>