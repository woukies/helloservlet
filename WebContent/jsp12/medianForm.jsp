<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="median" class="question.Median"></jsp:useBean>
<jsp:setProperty property="*" name="median"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�</h4>
	�Էµ� ������ <%= median.getNum1() %>�� <%= median.getNum2() %>�� <%= median.getNum3() %>��
	�߰����� <%= median.process() %>
</body>
</html>