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
					�ȳ��ϼ���. <%=session.getAttribute("uname")%>(<%=session.getAttribute("uid")%>)��!
				</td>
			</tr>
			<tr>
				<td border="0" align="center">
					<input type="submit" value="�α׾ƿ�">
					<input type="button" value="ȸ����������" onclick="javascript:window.location='memberUpdate.jsp'">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>