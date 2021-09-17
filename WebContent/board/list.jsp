<%@page import="java.util.Iterator"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BoardDBBean manager = BoardDBBean.getInstance();
	ArrayList<BoardBean> boards = manager.listBoard();
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
		<table border="1" cellspacing="0" >
			<caption>
				<a href="write.jsp">글 쓰 기</a>
			</caption>
			<tr align="center">
				<th width="100">번호</th>
				<th width="600">글 제목</th>
				<th width="200">작성자</th>
			</tr>
			<%
				for (BoardBean board : boards) {
			%>
			<tr bgcolor="f7f7f7"
				onmouseover="this.style.backgroundColor='#eeeeef'"
				onmouseout="this.style.backgroundColor='#f7f7f7'">
				<td align="center"><%= board.getB_id() %></td>	
				<td><a href=""><%= board.getB_title() %></a></td>
			<%
					if (board.getB_email() != null) {
			%>
				<td align="center"><a href="mailto:<%= board.getB_email() %>"><%= board.getB_name() %></a></td>
			<%
					} else {
			%>
				<td align="center"><%= board.getB_name() %></td>
			<%
					}
			%>
			</tr>
			<%
				}
			%>
			</tr>
		</table>
	</center>
</body>
</html>