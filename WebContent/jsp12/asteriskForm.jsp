<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="asterisk" class="question.Asterisk"></jsp:useBean>
<jsp:setProperty property="num" name="asterisk"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 정수가 <%= asterisk.getNum() %>는<br>
	<%= asterisk.process() %>
</body>
</html>