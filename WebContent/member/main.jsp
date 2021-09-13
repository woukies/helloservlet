<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<tr>
			<td colspan="2" align="center">
				안녕하세요. <%=session.getAttribute("name")%>(<%=session.getAttribute("id")%>)님
			</td>
		</tr>
		<tr>
			<td border="0" align="center">
				<input type="button" value="로그아웃" onclick="javascript:window.location='logout.jsp'">
				<input type="button" value="회원정보변경">
			</td>
		</tr>
	</table>
</body>
</html>