<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array"></jsp:useBean>
<jsp:setProperty property="*" name="array"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	�Էµ� ������
	<%= array.getNum1() %>��
	<%= array.getNum2() %>��
	<%= array.getNum3() %>��
	<%= array.getNum4() %>��
	<%= array.getNum5() %>����
	���� ū ���� <%= array.process() %>
</body>
</html>