<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="rectangle" class="area.Rectangle"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:setProperty property="width" name="rectangle"/>
	<jsp:setProperty property="height" name="rectangle"/>
	<h4>당신이 입력한 정보입니다</h4>
	가로길이가 <%= rectangle.getWidth() %>이고,
	세로길이가 <%= rectangle.getHeight() %>인
	사각형의 면적은 <%= rectangle.process() %>
</body>
</html>