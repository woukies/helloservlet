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
		String uID = request.getParameter("loginId");
	String uPW = request.getParameter("loginPw");

	/* 계정 확인 처리*/
	if (uID.equals("admin") && uPW.equals("admin1234")) {

		/* 쿠키 저장 */
		Cookie cookie = new Cookie("userID", uID);
		cookie.setMaxAge(60 * 60);
//		cookie.setPath("/");
		response.addCookie(cookie);
		response.sendRedirect("welcome.jsp");
	} else {
		out.println("아이디와 비밀번호를 확인해 주세요.");
	}

	%>
</body>
</html>