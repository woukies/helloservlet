<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="gugudan" class="question.GuGuDan"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<jsp:setProperty property="num" name="gugudan" value="5"/>
	<%= gugudan.process() %>
</body>
</html>