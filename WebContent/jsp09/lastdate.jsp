<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie lastDate = null;
	String msg="";
	boolean lastVisit = false;
	String newValue = ""+System.currentTimeMillis();
	Cookie[] cookies = request.getCookies();
	
	for(int i = 0; i < cookies.length; i++) {
		if(cookies[i].getName().equals("lastVisitCookie")) {
			lastVisit = true;
			lastDate = cookies[i];
			break;
		}
	}
	
	if(!lastVisit) {
		msg = "처음 방문입니다.";
		lastDate = new Cookie("lastVisitCookie", newValue);
		lastDate.setMaxAge(365 * 24 * 60 * 60);
		lastDate.setPath("/");
	} else {
		long last = Long.parseLong(lastDate.getValue());
		msg = "마지막 방문: " + new Date(last);
		lastDate.setValue(newValue);
	}
	
	response.addCookie(lastDate);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2><%= msg %></h2>
</body>
</html>