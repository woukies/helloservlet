<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="viewInfo.jsp" method="post">
		이 름: <input type="text" name="name" size="20"> <br>
		나 이: <input type="text" name="age" size="20"> <br>
		<hr>
		* P.S: 나이는 숫자만 입력해야 합니다.
		<hr>
		<input type="submit" value="전송">
	</form>
</body>
</html>