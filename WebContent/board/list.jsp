<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BoardDBBean manager = BoardDBBean.getInstance();
	ArrayList<BoardBean> boards = manager.listBoard();
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
		padding: 2px;
	}
	
	caption {
		text-align: right;
	}
</style>
</head>
<body>
	<center>
		<h1>게시판에 등록된 글 목록</h1>
		<table border="1" cellspacing="0">
			<caption>
				<a href="write.jsp">글 쓰 기</a>
			</caption>
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
				<td align="left"><a href="show.jsp?b_id=<%= board.getB_id() %>"><%= board.getB_title() %></a></td>
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
	</center>
</body>
</html>