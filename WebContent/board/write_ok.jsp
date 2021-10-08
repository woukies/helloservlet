<%@page import="java.io.IOException"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	BoardBean board = new BoardBean();
	
	/*
	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	su.upload();

	File file = su.getFiles().getFile(0);
	if(!file.isMissing()) {
		file.saveAs("/files/"+file.getFileName());
		board.setB_fname(file.getFileName());
		board.setB_fsize(file.getSize());
	}
	
	board.setB_name(su.getRequest().getParameter("b_name"));
	board.setB_pwd(su.getRequest().getParameter("b_pwd"));
	board.setB_email(su.getRequest().getParameter("b_email"));
	board.setB_title(su.getRequest().getParameter("b_title"));
	board.setB_content(su.getRequest().getParameter("b_content"));
	board.setB_ip(su.getRequest().getParameter("b_ip"));
	board.setB_ref(Integer.parseInt(su.getRequest().getParameter("b_ref")));
	board.setB_step(Integer.parseInt(su.getRequest().getParameter("b_step")));
	board.setB_level(Integer.parseInt(su.getRequest().getParameter("b_level")));
	*/

	int limitSize = 1024 * 1024 * 100; // 용량 제한, 예외 처리는 어떻게?
	MultipartRequest mr = new MultipartRequest(
			request, request.getRealPath("files"), limitSize, "euc-kr", new DefaultFileRenamePolicy());
	Enumeration files = mr.getFileNames();
	String file = (String) files.nextElement();
	
	if (mr.getFilesystemName(file) != null) {
		board.setB_fname(mr.getFilesystemName(file));
		board.setB_fsize((int) mr.getFile(file).length());
		board.setB_rfname(mr.getOriginalFileName(file));
	}
	
	board.setB_name(mr.getParameter("b_name"));
	board.setB_pwd(mr.getParameter("b_pwd"));
	board.setB_email(mr.getParameter("b_email"));
	board.setB_title(mr.getParameter("b_title"));
	board.setB_content(mr.getParameter("b_content"));
	board.setB_ip(mr.getParameter("b_ip"));
	board.setB_ref(Integer.parseInt(mr.getParameter("b_ref")));
	board.setB_step(Integer.parseInt(mr.getParameter("b_step")));
	board.setB_level(Integer.parseInt(mr.getParameter("b_level")));
	
	// board.setB_date(new Timestamp(new Date().getTime()));
	board.setB_date(new Timestamp(System.currentTimeMillis()));
	
	String ip = null;
	ip = InetAddress.getLocalHost().getHostAddress();
    board.setB_ip(ip);
    
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