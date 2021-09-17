<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	
	if (manager.insertBoard(board) == 1) {
		response.sendRedirect("list.jsp");
	} else {
%>
		history.go(-1);
<%
	}
%>