<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="board.js" charset="EUC-KR"></script>
</head>
<body>
	<center>
		<h1>�� �����ϱ�</h1>
		<table>
			<form action="delete_ok.jsp" method="POST" name="deleteForm">
				<tr height="50" align="center">
					<td colspan="2"><b> >> ��ȣ�� �Է��ϼ��� << </b></td>
				</tr>
				<tr height="50" align="center">
					<th>��ȣ</th>
					<td>
						<input type="hidden" name="b_id" value="<%= request.getParameter("b_id") %>">
						<input type="password" name="b_pwd" size="12" maxlength="12">
					</td>
				</tr>
				<tr height="50" align="center">
					<td colspan="2">
						<input type="button" value="�ۻ���" onclick="delete_ok()">
						<input type="reset" value="�ٽ��ۼ�">
						<input type="button" value="�۸��" onclick="location.href='list.jsp'">
					</td>
				</tr>
			</form>
		</table>
	</center>
</body>
</html>