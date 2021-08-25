<%@page import="myUtil.HanConv"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	
<%= HanConv.toKor(request.getParameter("name"))%>님, 안녕하세요!<br>
저희 홈페이지에 방문해 주셔서 감사합니다.<br>
즐거운 시간 되세요...
