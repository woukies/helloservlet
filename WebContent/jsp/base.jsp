<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 메소드 선언은 선언문에서만 --%>

	<%!String name = "홍길동";%>
	<%
		String addr = "서울시 송파구 석촌동";
	%>
	<br> 이름:
	<%-- 식(expression)을 이용해서 출력 --%>
	<%=name%>
	<br> 주소:
	<%
		out.println(addr);
	%>
	<br>
	<jsp:include page="age.jsp"></jsp:include>
</body>
</html>