<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%
	BoardDBBean manager = BoardDBBean.getInstance();

	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	su.upload();
	
	BoardBean board = new BoardBean();
	board.setB_name(su.getRequest().getParameter("b_name"));
	board.setB_pwd(su.getRequest().getParameter("b_pwd"));
	board.setB_email(su.getRequest().getParameter("b_email"));
	board.setB_title(su.getRequest().getParameter("b_title"));
	board.setB_content(su.getRequest().getParameter("b_content"));
	board.setB_ip(su.getRequest().getParameter("b_ip"));
	board.setB_ref(Integer.parseInt(su.getRequest().getParameter("b_ref")));
	board.setB_step(Integer.parseInt(su.getRequest().getParameter("b_step")));
	board.setB_level(Integer.parseInt(su.getRequest().getParameter("b_level")));
	
	
	// board.setB_date(new Timestamp(new Date().getTime()));
	board.setB_date(new Timestamp(System.currentTimeMillis()));
	
	String ip = null;
	ip = InetAddress.getLocalHost().getHostAddress();
    board.setB_ip(ip);
    
	File file = su.getFiles().getFile(0);
	if(!file.isMissing()) {
		file.saveAs("/files/"+file.getFileName());
		board.setB_fname(file.getFileName());
		board.setB_fsize(file.getSize());
	}
	
	if (manager.insertBoard(board) == 1) {
		response.sendRedirect("list.jsp");
	} else {
%>
	<script>
		alert("글 작성 실패");
		history.go(-1);
	</script>
<%
	}
%>