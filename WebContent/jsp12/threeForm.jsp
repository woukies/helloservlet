<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="three" class="question.Three"></jsp:useBean>
<jsp:setProperty name="three" property="num"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다</h4>
	입력된 수가 <%= three.getNum() %>은
	<% out.println(three.process()?"3의 배수입니다.":"3의 배수가 아닙니다."); %>
</body>
</html>