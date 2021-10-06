<%@page import="java.text.SimpleDateFormat"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_page;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	BoardDBBean manager = BoardDBBean.getInstance();
	BoardBean board = manager.getBoard(b_id, true);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	String fileSizeUnit = null;
	if (board.getB_fsize() > 0) {
		String[] sizeUnit = { "Bytes", "KB", "MB", "GB", "TB" };
		int fileSize = board.getB_fsize();
		for (int i = 0; i < sizeUnit.length; i++) {
			if(fileSize > 1024) {
				fileSize /= 1024;
			} else {
				fileSizeUnit = fileSize + sizeUnit[i];
				break;
			}
		}
		if (fileSizeUnit == null) {
			fileSizeUnit = fileSize + "PB";
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>글 내용보기</h1>
		<table border="1" width="600" cellspacing="0">
			<tr height="30" align="center">
				<th width="100">글 번호</th>
				<td width="200"><%= b_id %></td>
				<th width="100">조회수</th>
				<td width="200"><%= board.getB_hit() %></td>
			</tr>
			<tr height="30" align="center">
				<th>작성자</th>
			<% if (board.getB_email() != null) { %>
				<td><a href="mailto:<%= board.getB_email() %>"><%= board.getB_name() %></a></td>
			<% } else { %>
				<td><%= board.getB_name() %></td>
			<% } %>
				<th>작성일</th>
				<td><%= board.getB_date() != null ? sdf.format(board.getB_date()) : "-" %></td>
			</tr>
			<% if (board.getB_fsize() > 0) { %>
			<tr height="30" align="center">
				<th>파일</th>
				<td colspan="3">
					<img src="../res/zip.gif"> <a href="../files/<%= board.getB_fname() %>"><%= board.getB_fname() %>(<%= fileSizeUnit %>)</a>
				</td>
			</tr>
			<% } %>
			<tr height="30" align="center">
				<th>글 제목</th>
				<td colspan="3" align="left"><%= board.getB_title() %></td>
			</tr>
			<tr height="30">
				<td colspan="4" align="left"><pre><%= board.getB_content() %></pre></td>
			</tr>
			<tr height="30">
				<td colspan="4" align="right">
					<input type="button" value="글수정" onclick="location.href='edit.jsp?b_id=<%= b_id %>&b_page=<%= b_page %>'">
					<input type="button" value="글삭제" onclick="location.href='delete.jsp?b_id=<%= b_id %>&b_page=<%= b_page %>'">
					<input type="button" value="글답변" onclick="location.href='write.jsp?b_id=<%= b_id %>&b_page=<%= b_page %>'">
   	            	<input type="button" value="글목록" onclick="location.href='list.jsp?b_page=<%= b_page %>'">
				</td>
			</tr>
		</table>
	</center>
</body>
</html>