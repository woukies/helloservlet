<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%	
		if(session.getAttribute("userID") == null) {
			response.sendRedirect("session_out.jsp");
		}
	%>
	<%= (String) session.getAttribute("userID") %>�� �ݰ����ϴ�.<br><br>
	<a href="session_out.jsp">�α׾ƿ�</a>
</body>
</html>