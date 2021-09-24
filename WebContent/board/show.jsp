<%@page import="java.text.SimpleDateFormat"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	BoardDBBean manager = BoardDBBean.getInstance();
	BoardBean board = manager.getBoard(b_id);
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
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
			<tr height="30" align="center">
				<th>글 제목</th>
				<td colspan="3" align="left"><%= board.getB_title() %></td>
			</tr>
			<tr height="30" align="center">
				<td colspan="4" align="left"><pre><%= board.getB_content() %></pre></td>
			</tr>
		</table>
	</center>
</body>
</html>