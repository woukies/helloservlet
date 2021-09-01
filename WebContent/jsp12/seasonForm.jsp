<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="season" class="question.Season"></jsp:useBean>
<jsp:setProperty property="month" name="season"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다.</h4>
	입력된 정수가 <%= season.getMonth() %>은
	계절이 <%= season.process() %>
</body>
</html>