<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="rectangle2" class="question.Rectangle"></jsp:useBean>
<jsp:setProperty property="*" name="rectangle2"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>����� �Է��� �����Դϴ�</h4>
	(<%= rectangle2.getX() %>, <%= rectangle2.getY() %>)�� �簢�� �ȿ�
	<% out.println(rectangle2.process()?"�ֽ��ϴ�.":"�����ϴ�."); %>
</body>
</html>