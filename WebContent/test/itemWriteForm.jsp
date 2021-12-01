<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>정보 입력 폼</h1>
	<table>
		<form method="post" action="itemWriteResult.jsp">
			<tr>
				<th width="100">상품명</th>
				<td width="500"><input type="text" name="itemName"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="itemPrice"></td>
			</tr>
			<tr>
				<th>설명</th>
				<td><textarea name="itemDetail" rows="10" class="inputbox" style="width: 100%;"></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="전송"> <input type="reset" value="취소">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>