<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	if (session.getAttribute("uid") == null) {
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table border="1" align="center">
		<form method="post" action="logout.jsp">
			<tr>
				<td colspan="2" align="center">
					안녕하세요. <%=session.getAttribute("uname")%>(<%=session.getAttribute("uid")%>)님!
				</td>
			</tr>
			<tr>
				<td border="0" align="center">
					<input type="submit" value="로그아웃">
					<input type="button" value="회원정보변경" onclick="javascript:window.location='memberUpdate.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>