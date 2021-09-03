<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="triangle" class="question.Triangle"></jsp:useBean>
<jsp:setProperty property="*" name="triangle"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다</h4>
	입력된 3변의 값이
	<%= triangle.getNum1() %>와 <%= triangle.getNum2() %>와 <%= triangle.getNum3() %>은
	삼각형이 <%= triangle.process()?"됩니다":"안됩니다" %>
</body>
</html>