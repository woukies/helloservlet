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
			<srtong><%=cookies[i].getValue()%>님 반갑습니다.</srtong><br>
<%			
			break;
		}
	}
%>


<a href="cookie_out.jsp">로그아웃</a>


</body>
</html>