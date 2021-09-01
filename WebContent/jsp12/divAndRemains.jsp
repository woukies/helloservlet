<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="divAndRemains" class="question.DivAndRemains"></jsp:useBean>
<jsp:setProperty name="divAndRemains" property="num"></jsp:setProperty>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다</h4>
	입력된 정수가 <%= divAndRemains.getNum() %>은 10의 자리와 1의 자리가
	<% out.println(divAndRemains.process()?"같습니다.":"다릅니다."); %>
</body>
</html>