<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="threeSixNine" class="question.ThreeSixNine"></jsp:useBean>
<jsp:setProperty property="num" name="threeSixNine"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>����� �Է��� �����Դϴ�</h4>
	�Էµ� ������ <%= threeSixNine.getNum() %>�� <%= threeSixNine.process() %>
</body>
</html>