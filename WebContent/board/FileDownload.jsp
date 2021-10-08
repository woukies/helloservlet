<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.File"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int b_id = Integer.parseInt(request.getParameter("b_id"));
		BoardDBBean manager = BoardDBBean.getInstance();
		BoardBean board = manager.getFileName(b_id);
		
		String fname = "";
		String rfname = "";
		
		if (board != null) {
			fname = board.getB_fname();
			rfname = board.getB_rfname();
			
			String fileDir = application.getRealPath("/files");
			File file = new File(fileDir + File.separator + fname);
			long fileSize = file.length();
			rfname = new String(rfname.getBytes("ms949"), "8859_1");
			
			response.setContentType("application/octet-stream");
			response.setContentLength((int) fileSize);
			response.setHeader("Content-Disposition", "attachment;filename=" + rfname);
			
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
			out.clear();
			out = pageContext.pushBody();
			BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream());
			
			int data;
			while ((data = bis.read()) != -1) {
				bos.write(data);
			}
			
			bis.close();
			bos.close();
		}		
	%>
</body>
</html>