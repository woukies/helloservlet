<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array"></jsp:useBean>
<jsp:setProperty property="*" name="array"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 정수가
	<%= array.getNum1() %>와
	<%= array.getNum2() %>와
	<%= array.getNum3() %>와
	<%= array.getNum4() %>와
	<%= array.getNum5() %>에서
	가장 큰 수는 <%= array.process() %>
</body>
</html>