<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="arithmetic" class="question.Arithmetic"></jsp:useBean>
<jsp:setProperty property="*" name="arithmetic"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�</h4>
	<%= arithmetic.getNum1() %>�� <%= arithmetic.getNum2() %>�� ��� �����
	<%= arithmetic.getNum1() %> <%= arithmetic.getOperator() %> <%= arithmetic.getNum2() %>��
	��� ����� <%= arithmetic.process() %>
</body>
</html>