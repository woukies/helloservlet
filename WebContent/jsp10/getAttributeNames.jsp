<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[설정된 세션 값을 얻어오는 예제 -2]</h3>
	</center>
	<hr>
	getAttributeNames() 메소드를 사용하여 세션값을 얻어오는 예제입니다.
	<hr>
	<%
		String ls_validate="현재 페이지는 물론 이전 페이지에서 설정된 세션 값들도 나타납니다.";
		session.setAttribute("Validate", ls_validate);
		
		String ls_name = "";
		String ls_value = "";
		
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			ls_name = enum_app.nextElement().toString();
			ls_value = session.getAttribute(ls_name).toString();
			
			out.println("<br>얻어온 세션 이름["+i+"]: " + ls_name + "<br>");
			out.println("<br>얻어온 세션 값["+i+"]: " + ls_value + "<hr>");
		}
	%>
</body>
</html>
