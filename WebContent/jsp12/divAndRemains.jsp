<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="divAndRemains" class="question.DivAndRemains"></jsp:useBean>
<jsp:setProperty name="divAndRemains" property="num"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�</h4>
	�Էµ� ������ <%= divAndRemains.getNum() %>�� 10�� �ڸ��� 1�� �ڸ���
	<% out.println(divAndRemains.process()?"�����ϴ�.":"�ٸ��ϴ�."); %>
</body>
</html>