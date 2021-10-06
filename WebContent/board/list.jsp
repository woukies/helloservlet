<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_page;
	int pageCount = 0;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
	BoardDBBean manager = BoardDBBean.getInstance();
	ArrayList<BoardBean> boards = manager.listBoard(b_page);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	th,
	td {
		padding: 3px;
	}
</style>
</head>
<body>
	<center>
		<h1>게시판에 등록된 글 목록</h1>
		<a href="write.jsp?b_page=<%= b_page %>" style="margin-left: 600px;">글 쓰 기</a>
		<table border="1" cellspacing="0">
			<tr align="center">
				<th width="80">번호</th>
				<th width="450">글 제목</th>
				<th width="120">작성자</th>
				<th width="200">작성일</th>
				<th width="80">조회수</th>
			</tr>
			<%
				for (BoardBean board : boards) {
			%>
			<tr bgcolor="#f7f7f7"
				onmouseover="this.style.backgroundColor='#eeeeef'"
				onmouseout="this.style.backgroundColor='#f7f7f7'"
				align="center">
				<td><%= board.getB_id() %></td>	
				<td align="left">
					<% 
						if(board.getB_level() > 0) {
							for(int i = 0; i < board.getB_level(); i++) {
								%>&nbsp;<%
							}
							%><img src="../res/AnswerLine.gif"><%
						}
					%>
					<a href="show.jsp?b_id=<%= board.getB_id() %>&b_page=<%= b_page %>"><%= board.getB_title() %></a>
					<%
						if(board.getB_fname() != null) { // board.getB_fsize() > 0
							%><img src="../res/zip.gif" alt="<%= board.getB_fname() %>"><%
						}
					%>
				</td>
			<%
					if (board.getB_email() != null) {
			%>
				<td><a href="mailto:<%= board.getB_email() %>"><%= board.getB_name() %></a></td>
			<%
					} else {
			%>
				<td><%= board.getB_name() %></td>
			<%
					}
			%>
				<td><%= board.getB_date() != null ? sdf.format(board.getB_date()) : "-" %></td>
				<td><%= board.getB_hit() %></td>
			<%
				}
			%>
			</tr>
		</table>
		<div>
			<%	
				int pageLast = (int) Math.ceil((double) BoardBean.boardCount/BoardBean.pageSize);
				int pageCursor = b_page - ((b_page - 1) % BoardBean.pageButtons);
				
				if(pageCursor > 1) {
					%><a href="list.jsp?b_page=<%= pageCursor - 1 %>">[이전]</a><%
				}
				for(int i = 0; i < BoardBean.pageButtons; i++) {
					if (pageCursor != b_page) {
						%>
							<a href="list.jsp?b_page=<%= pageCursor %>">[<%= pageCursor %>]</a>
						<%
					} else {
						%>
						[<%= pageCursor %>]
					<%
					}
					pageCursor++;
					if(pageCursor > pageLast) {
						break;
					}
				}
				pageCursor--;
				if(pageCursor < pageLast) {
					%><a href="list.jsp?b_page=<%= pageCursor + 1 %>">[다음]</a><%
				}
			%>
		</div>
	</center>
</body>
</html>