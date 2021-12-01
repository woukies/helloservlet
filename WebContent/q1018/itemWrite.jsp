<%@page import="q1018.ItemBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="q1018.ItemDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	ItemDBBean manager = ItemDBBean.getInstance();
	ArrayList<ItemBean> items = manager.listItem();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	td {
		padding: 3px;
	}
</style>
</head>
<body>
	<h1>입력 완료된 정보</h1>
	<table border="1">
		<%
		for (ItemBean item: items) {
			%>
			<tr>
				<td><%= item.getName() %></td>
				<td><%= item.getPrice() %></td>
				<td><%= item.getDescription() %></td>
			</tr>
			<%
		}
		%>
	</table>
</body>
</html>