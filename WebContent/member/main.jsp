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
				�ȳ��ϼ���. <%=session.getAttribute("name")%>(<%=session.getAttribute("id")%>)��
			</td>
		</tr>
		<tr>
			<td border="0" align="center">
				<input type="button" value="�α׾ƿ�" onclick="javascript:window.location='logout.jsp'">
				<input type="button" value="ȸ����������">
			</td>
		</tr>
	</table>
</body>
</html>