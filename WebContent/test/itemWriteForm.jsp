<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���� �Է� ��</h1>
	<table>
		<form method="post" action="itemWriteResult.jsp">
			<tr>
				<th width="100">��ǰ��</th>
				<td width="500"><input type="text" name="itemName"></td>
			</tr>
			<tr>
				<th>����</th>
				<td><input type="text" name="itemPrice"></td>
			</tr>
			<tr>
				<th>����</th>
				<td><textarea name="itemDetail" rows="10" class="inputbox" style="width: 100%;"></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="����"> <input type="reset" value="���">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>