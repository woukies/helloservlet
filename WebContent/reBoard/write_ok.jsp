<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	int isWrite = manager.insertBoard(board);
	
	if (isWrite == 1) {
%>
		성공
<%		
	} else {
%>
		실패
<%
	}
%>