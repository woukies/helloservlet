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
		<h3>[세션을 제거하는 예제]</h3>
	</center>
	<hr>
	invalidate() 메소드를 사용하여 세션을 삭제하는 예제입니다.
	<%
		String s_name, s_value;
	
		session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요. ^ㅡ^");
		session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요. ^~^");
		session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요. 'ㅡ'");
	
		out.println("<hr><h3>-------------------- 세션값을 삭제하기 전 --------------------</h3>");
	
		Enumeration enum_app = session.getAttributeNames(); // 열거형
		int i = 0;
	
		while (enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.println("<hr>얻어온 세션 이름[" + i + "]: " + s_name);
			out.println("<br>얻어온 세션 값[" + i + "]: " + s_value);
		}
		
		out.println("<hr>1. 과연 세션 아이디가 유효할까요?<br>");
		
		if(request.isRequestedSessionIdValid()) {
			out.println("세션 아이디가 유효합니다.<hr>");
		} else {
			out.println("세션 아이디가 유효하지 않습니다.<hr>");
		}
		
		session.invalidate();
		
		out.println("<hr><h3>-------------------- 세션값을 삭제한 후 --------------------</h3>");
		
		/*
		enum_app = session.getAttributeNames();
		i = 0;
		
		while (enum_app.hasMoreElements()) {
			i++;
			s_name = enum_app.nextElement().toString();
			s_value = session.getAttribute(s_name).toString();
			out.println("<hr>얻어온 세션 이름[" + i + "]: " + s_name);
			out.println("<br>얻어온 세션 값[" + i + "]: " + s_value);
		}
		*/
		
		out.println("<hr>2. 과연 세션 아이디가 유효할까요?<br>");
		
		if(request.isRequestedSessionIdValid()) {
			out.println("세션 아이디가 유효합니다.<hr>");
		} else {
			out.println("세션 아이디가 유효하지 않습니다.<hr>");
		}
	%>
</body>
</html>