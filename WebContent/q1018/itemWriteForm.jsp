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
		<form action="itemWriteResult.jsp" method="POST">
			<tr>
				<th width="100">��ǰ��</th>
				<td width="600"><input type="text" maxlength="20" name="name"></td>
			</tr>
			<tr>	
				<th>����</th>
				<td><input type="number" maxlength="8" name="price">
			</tr>
			<tr>	
				<th>����</th>
				<td><textarea rows="20" cols="70" maxlength="100" name="description"></textarea>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="����">
					<input type="reset" value="���">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>