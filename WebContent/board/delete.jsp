<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int b_page;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="board.js" charset="EUC-KR"></script>
</head>
<body>
	<center>
		<h1>글 삭제하기</h1>
		<table>
			<form action="delete_ok.jsp?b_page=<%= b_page %>" method="POST" name="deleteForm">
				<tr height="50" align="center">
					<td colspan="2"><b> >> 암호를 입력하세요 << </b></td>
				</tr>
				<tr height="50" align="center">
					<th>암호</th>
					<td>
						<input type="hidden" name="b_id" value="<%= request.getParameter("b_id") %>">
						<input type="password" name="b_pwd" size="12" maxlength="12">
					</td>
				</tr>
				<tr height="50" align="center">
					<td colspan="2">
						<input type="button" value="글삭제" onclick="delete_ok()">
						<input type="reset" value="다시작성">
						<input type="button" value="글목록" onclick="location.href='list.jsp?b_page=<%= b_page %>'">
					</td>
				</tr>
			</form>
		</table>
	</center>
</body>
</html>