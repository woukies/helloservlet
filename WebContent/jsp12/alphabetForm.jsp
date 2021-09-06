<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="alphabet" class="question.Alphabet"></jsp:useBean>
<jsp:setProperty property="chr" name="alphabet"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	입력된 알파벳이 <%= alphabet.getChr() %>은 <%= alphabet.process() %>
</body>
</html>