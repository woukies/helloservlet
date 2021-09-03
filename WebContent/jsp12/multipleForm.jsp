<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="multiple" class="question.Multiple"></jsp:useBean>
<jsp:setProperty property="num" name="multiple"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 정수가 <%= multiple.getNum() %>는 <%= multiple.process() %>
</body>
</html>