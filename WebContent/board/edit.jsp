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
	BoardBean board = manager.getBoard(b_id, false);	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="board.js" charset="EUC-KR"></script>
<style>
</style>
</head>
<body>
    <center>
    	<h1>글 수정하기</h1>
	    <table>
	        <form action="edit_ok.jsp?b_page=<%= b_page %>" method="POST" name="writeForm">
	            <tr height="30">
	                <td width="80" align="right">작성자</td>
	                <td width="140"><input type="text" name="b_name" value="<%= board.getB_name() %>" maxlength="20"></td>
	                <td width="80" align="right">이메일</td>
	                <td width="240"><input type="text" name="b_email" value="<%= board.getB_email() != null ? board.getB_email() : "" %>" maxlength="50"></td>
	            </tr>
	            <tr height="30">
	                <td width="80" align="right">글제목</td>
	                <td colspan="3"><input type="text" name="b_title" value="<%= board.getB_title() %>" size="60" maxlength="80"></td>
	            </tr>
	            <tr>
	                <td colspan="4"><textarea name="b_content" rows="10" cols="85"><%= board.getB_content() %></textarea></td>
	            </tr>
	            <tr>
	            	<td>암호</td>
	            	<td colspan="3"><input type="password" name="b_pwd" maxlength="12"></td>
	            </tr>
	            <tr align="center">
	                <td colspan="4">
	                	<input type="hidden" name="b_id" value="<%= b_id %>">
	                	<input type="button" value="글수정" onclick="check_ok()">
	                	<input type="reset" value="다시작성">
	                	<input type="button" value="글목록" onclick="location.href='list.jsp?b_page=<%= b_page %>'">
	                </td>
	            </tr>
	        </form>
	    </table>
    </center>
</body>
</html>