<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h4>������ ����ϱ�</h4>
	<jsp:forward page="forward_data.jsp">
		<jsp:param value="5" name="num" />
	</jsp:forward>
</body>
</html>