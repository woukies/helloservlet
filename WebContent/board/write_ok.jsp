<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	// board.setB_date(new Timestamp(new Date().getTime()));
	board.setB_date(new Timestamp(System.currentTimeMillis()));
	
	String ip = null;
	/* */
	ip = InetAddress.getLocalHost().getHostAddress();
    board.setB_ip(ip);
	
	if (manager.insertBoard(board) == 1) {
		response.sendRedirect("list.jsp");
	} else {
%>
	<script>
		alert("�� �ۼ� ����");
		history.go(-1);
	</script>
<%
	}
%>