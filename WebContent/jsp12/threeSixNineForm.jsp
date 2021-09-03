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
	<h4>당신이 입력한 정보입니다</h4>
	입력된 정수가 <%= threeSixNine.getNum() %>은 <%= threeSixNine.process() %>
</body>
</html>