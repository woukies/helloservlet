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

	/* ���� Ȯ�� ó��*/
	if (uID.equals("admin") && uPW.equals("admin1234")) {

		/* ��Ű ���� */
		Cookie cookie = new Cookie("userID", uID);
		cookie.setMaxAge(60 * 60);
//		cookie.setPath("/");
		response.addCookie(cookie);
		response.sendRedirect("welcome.jsp");
	} else {
		out.println("���̵�� ��й�ȣ�� Ȯ���� �ּ���.");
	}

	%>
</body>
</html>