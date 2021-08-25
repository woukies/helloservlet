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
	<%!Calendar c1 = Calendar.getInstance();%>
	<%
		c1.add(Calendar.DATE, 1);
	%>
	<%=c1.getTime()%>
	<%!public String calDate() {
	Calendar c2 = Calendar.getInstance();
	String days = "";
	String month = "";
	String year = "";

	c2.add(Calendar.DATE, 1);
	days = String.valueOf(c2.get(Calendar.DATE));
	month = String.valueOf(c2.get(Calendar.MONTH) + 1);
	year = String.valueOf(c2.get(Calendar.YEAR));

	return year + "." + month + "." + days;
}%>
	내일:
	<%=calDate()%>

</body>
</html>