<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="three" class="question.Three"></jsp:useBean>
<jsp:setProperty name="three" property="num"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�</h4>
	�Էµ� ���� <%= three.getNum() %>��
	<% out.println(three.process()?"3�� ����Դϴ�.":"3�� ����� �ƴմϴ�."); %>
</body>
</html>