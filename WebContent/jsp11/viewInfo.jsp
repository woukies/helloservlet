<%@ page errorPage="error02.jsp" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String s_name;
	int age;
%>
<%
	request.setCharacterEncoding("euc-kr");
	s_name = request.getParameter("name");
	age = Integer.parseInt(request.getParameter("age"));
%>
<h3>ȸ�� ���� ���</h3>
<hr>
����� �̸��� <%= s_name %>�Դϴ�.<br>
����� ���̴� <%= age %>�Դϴ�.<br>