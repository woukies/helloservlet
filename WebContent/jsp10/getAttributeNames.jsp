<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[������ ���� ���� ������ ���� -2]</h3>
	</center>
	<hr>
	getAttributeNames() �޼ҵ带 ����Ͽ� ���ǰ��� ������ �����Դϴ�.
	<hr>
	<%
		String ls_validate="���� �������� ���� ���� ���������� ������ ���� ���鵵 ��Ÿ���ϴ�.";
		session.setAttribute("Validate", ls_validate);
		
		String ls_name = "";
		String ls_value = "";
		
		Enumeration enum_app = session.getAttributeNames();
		int i = 0;
		
		while(enum_app.hasMoreElements()) {
			i++;
			ls_name = enum_app.nextElement().toString();
			ls_value = session.getAttribute(ls_name).toString();
			
			out.println("<br>���� ���� �̸�["+i+"]: " + ls_name + "<br>");
			out.println("<br>���� ���� ��["+i+"]: " + ls_value + "<hr>");
		}
	%>
</body>
</html>
