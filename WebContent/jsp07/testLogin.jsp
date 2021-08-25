<%@page import="myUtil.HanConv"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	String s_id = "hong";
String s_pw = "1234";
String s_name = "ȫ�浿";

if (s_id.equals(request.getParameter("id")) && s_pw.equals(request.getParameter("pw"))) {
	response.sendRedirect("main.jsp?name=" + HanConv.encodeKor(s_name));
} else {
	response.sendRedirect("login.html");
}
%>
