<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("name");
	session.removeAttribute("id");
%>

<script>
	document.location.href = "login.jsp";
</script>