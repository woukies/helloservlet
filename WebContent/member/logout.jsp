<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// session.removeAttribute("name");
	// session.removeAttribute("id");
	session.invalidate();
	response.sendRedirect("login.jsp");
%>