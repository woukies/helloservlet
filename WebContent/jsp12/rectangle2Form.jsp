<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="rectangle2" class="question.Rectangle"></jsp:useBean>
<jsp:setProperty property="*" name="rectangle2"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h4>당신이 입력한 정보입니다</h4>
	(<%= rectangle2.getX() %>, <%= rectangle2.getY() %>)는 사각형 안에
	<% out.println(rectangle2.process()?"있습니다.":"없습니다."); %>
</body>
</html>