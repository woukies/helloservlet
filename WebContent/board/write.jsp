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
	int b_id = -1;
	int b_ref = -1, b_step = 0, b_level = 0;
	String b_title = "";
	if(request.getParameter("b_id") != null) {
		b_id = Integer.parseInt(request.getParameter("b_id"));
		BoardDBBean manager = BoardDBBean.getInstance();
		BoardBean board = manager.getBoard(b_id, false);
		b_ref = board.getB_ref();
		b_step = board.getB_step() + 1;
		b_level = board.getB_level() + 1;
		b_title = "[�亯]:" + board.getB_title();
	} 
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
    	<h1>�� �� �� ��</h1>
	    <table>
	        <form action="write_ok.jsp" method="POST" name="writeForm">
	            <tr height="30">
	                <td width="80" align="right">�ۼ���</td>
	                <td width="140"><input type="text" name="b_name" maxlength="20"></td>
	                <td width="80" align="right">�̸���</td>
	                <td width="240"><input type="text" name="b_email" maxlength="50"></td>
	            </tr>
	            <tr height="30">
	                <td width="80" align="right">������</td>
	                <td colspan="3"><input type="text" name="b_title" value="<%= b_title %>" size="60" maxlength="80"></td>
	            </tr>
	            <tr>
	                <td colspan="4"><textarea name="b_content" rows="20" cols="70"></textarea></td>
	            </tr>
	            <tr>
	            	<td>��ȣ</td>
	            	<td colspan="3"><input type="password" name="b_pwd" maxlength="12"></td>
	            </tr>
	            <tr align="center">
	                <td colspan="4">
		                <input type="hidden" name="b_ref" value="<%= b_ref %>">
		                <input type="hidden" name="b_step" value="<%= b_step %>">
		                <input type="hidden" name="b_level" value="<%= b_level %>">
	                	<input type="button" value="�۾���" onclick="check_ok()">
	                	<input type="reset" value="�ٽ��ۼ�">
	                	<input type="button" value="�۸��" onclick="javascript:window.location='list.jsp?b_page=<%= b_page %>'">
	                </td>
	            </tr>
	        </form>
	    </table>
    </center>
</body>
</html>