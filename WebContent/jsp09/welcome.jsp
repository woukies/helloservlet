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
	Cookie cookies[] = request.getCookies();

	for(int i = 0; i < cookies.length; i++) {
		if(cookies[i].getName().equals("userID")) {
%>
			<srtong><%=cookies[i].getValue()%>�� �ݰ����ϴ�.</srtong><br>
<%			
			break;
		}
	}
%>


<a href="cookie_out.jsp">�α׾ƿ�</a>


</body>
</html>