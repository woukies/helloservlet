<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	                <td width="140"><input type="text" name="b_name"></td>
	                <td width="80" align="right">�̸���</td>
	                <td width="240"><input type="text" name="b_email"></td>
	            </tr>
	            <tr height="30">
	                <td width="80" align="right">������</td>
	                <td colspan="3"><input type="text" name="b_title" size="60"></td>
	            </tr>
	            <tr>
	                <td colspan="4"><textarea name="b_content" rows="20" cols="70"></textarea></td>
	            </tr>
	            <tr>
	            	<td>��ȣ</td>
	            	<td colspan="3"><input type="password" name="b_pwd"></td>
	            </tr>
	            <tr align="center">
	                <td colspan="4">
	                	<input type="button" value="�۾���" onclick="check_ok()">
	                	<input type="reset" value="�ٽ��ۼ�">
	                	<input type="button" value="�۸��" onclick="javascript:window.location='list.jsp'">
	                </td>
	            </tr>
	        </form>
	    </table>
    </center>
</body>
</html>