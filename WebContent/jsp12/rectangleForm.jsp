<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="rectangle" class="area.Rectangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="width" name="rectangle"/>
	<jsp:setProperty property="height" name="rectangle"/>
	<h4>����� �Է��� �����Դϴ�</h4>
	���α��̰� <%= rectangle.getWidth() %>�̰�,
	���α��̰� <%= rectangle.getHeight() %>��
	�簢���� ������ <%= rectangle.process() %>
</body>
</html>