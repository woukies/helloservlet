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
	<jsp:setProperty property="width" name="rectangle" value="20"/>
	<jsp:setProperty property="height" name="rectangle" value="30"/>
	<h4>�簢���� ���� ����ϱ�</h4>
	���� <jsp:getProperty property="width" name="rectangle"/>,
	���� <jsp:getProperty property="height" name="rectangle"/>��
	�簢���� ������ <%= rectangle.process() %>	
</body>
</html>