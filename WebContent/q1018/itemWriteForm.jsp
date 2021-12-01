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
		<form action="itemWriteResult.jsp" method="POST">
			<tr>
				<th width="100">상품명</th>
				<td width="600"><input type="text" maxlength="20" name="name"></td>
			</tr>
			<tr>	
				<th>가격</th>
				<td><input type="number" maxlength="8" name="price">
			</tr>
			<tr>	
				<th>설명</th>
				<td><textarea rows="20" cols="70" maxlength="100" name="description"></textarea>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="전송">
					<input type="reset" value="취소">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>