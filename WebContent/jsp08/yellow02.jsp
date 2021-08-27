<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
	<center>
		<h3>[jsp:param 액션 태그에 대한 예제]</h3>
	</center>
	<hr>
	이 파일은 yellow02.jsp 파일입니다.
	<br>
	<hr>
	현재 웹 브라우저에 나타난 웹 페이지는
	<br>
	<%=request.getParameter("url")%>로 부터 이동되었습니다.
	<hr>
	<%=request.getParameter("url")%>에서 넘어온 메시지:
	<%=request.getParameter("news")%>
</body>
</html>