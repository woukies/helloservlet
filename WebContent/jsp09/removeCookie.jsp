<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%

	Cookie[] cookies = request.getCookies();

	for(int i = 0; i < cookies.length; i++) {
		out.println(i + "��° ��Ű " + cookies[i].getName() + " ����<br>");
		cookies[i].setMaxAge(0);
		cookies[i].setPath("/");
		response.addCookie(cookies[i]);
	}

%>