<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="circle" class="area.Circle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>���� ���� ����ϱ�</h4>
	<jsp:setProperty property="radius" name="circle" value="10"/>
	�������� <jsp:getProperty property="radius" name="circle"/>�� ���� ������ <%= circle.process() %>
</body>
</html>