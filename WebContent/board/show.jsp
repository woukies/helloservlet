<%@page import="java.text.SimpleDateFormat"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	BoardDBBean manager = BoardDBBean.getInstance();
	BoardBean board = manager.getBoard(b_id, true);
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
		<h1>�� ���뺸��</h1>
		<table border="1" width="600" cellspacing="0">
			<tr height="30" align="center">
				<th width="100">�� ��ȣ</th>
				<td width="200"><%= b_id %></td>
				<th width="100">��ȸ��</th>
				<td width="200"><%= board.getB_hit() %></td>
			</tr>
			<tr height="30" align="center">
				<th>�ۼ���</th>
			<% if (board.getB_email() != null) { %>
				<td><a href="mailto:<%= board.getB_email() %>"><%= board.getB_name() %></a></td>
			<% } else { %>
				<td><%= board.getB_name() %></td>
			<% } %>
				<th>�ۼ���</th>
				<td><%= board.getB_date() != null ? sdf.format(board.getB_date()) : "-" %></td>
			</tr>
			<tr height="30" align="center">
				<th>�� ����</th>
				<td colspan="3" align="left"><%= board.getB_title() %></td>
			</tr>
			<tr height="30">
				<td colspan="4" align="left"><pre><%= board.getB_content() %></pre></td>
			</tr>
			<tr height="30">
				<td colspan="4" align="right">
					<input type="button" value="�ۼ���" onclick="location.href='edit.jsp?b_id=<%= b_id %>'">
					<input type="button" value="�ۻ���" onclick="location.href='delete.jsp?b_id=<%= b_id %>'">
					<input type="button" value="�۴亯" onclick="location.href='write.jsp?b_id=<%= b_id %>'">
   	            	<input type="button" value="�۸��" onclick="location.href='list.jsp'">
				</td>
			</tr>
		</table>
	</center>
</body>
</html>