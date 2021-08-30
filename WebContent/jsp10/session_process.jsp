<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String l_id = request.getParameter("l_id");
		String l_pw = request.getParameter("l_pw");
		
		if(l_id.equals("admin") && l_pw.equals("admin1234")) {
			session.setAttribute("userID", l_id);
			response.sendRedirect("welcome.jsp");
		}
		else {
			out.println("<a href='session.jsp'>아이디와 비밀번호를 확인해 주세요</a>");
		}
	%>
</body>
</html>