<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
		public String someday() {
			Calendar c = Calendar.getInstance();
			c.add(Calendar.YEAR, -1);
			c.add(Calendar.MONTH, -2);
			c.add(Calendar.DATE, -3);
		
			return c.get(Calendar.YEAR) + "�� " + (c.get(Calendar.MONTH) + 1) + "�� " + c.get(Calendar.DATE) + "��";
		}
	%>

	<%=someday()%>
</body>
</html>