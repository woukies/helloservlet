<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%!
	Connection conn = null;
	Statement state = null;
	ResultSet result = null;

	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "root";

	String query = "select * from member2";
%>
<!-- <!DOCTYPE html>  -->
<html>
<head>
<meta charset="EUC-KR">
<title>MySQL</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>등급</td>
			<td>전화번호</td>
		</tr>
		<%
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				state = conn.createStatement();
	
				result = state.executeQuery(query);
	
				while (result.next()) {
		%>
		<tr>
			<td><%=result.getString("id")%></td>
			<td><%=result.getString("name")%></td>
			<td><%=result.getInt("class") == 1 ? "일반회원" : "교수님"%></td>
			<td><%=result.getString("tel")%></td>
		</tr>
		<%
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (result != null) result.close();
					if (state != null) state.close();
					if (conn != null) conn.close();
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		%>
	</table>
</body>
</html>