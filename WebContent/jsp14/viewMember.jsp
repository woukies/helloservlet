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

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "scott";
	String password = "tiger";

	String query = "select * from member2";
%>
<!-- <!DOCTYPE html>  -->
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>���̵�</td>
			<td>�̸�</td>
			<td>���</td>
			<td>��ȭ��ȣ</td>
		</tr>
		<%
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, password);
				state = conn.createStatement();
	
				result = state.executeQuery(query);
	
				while (result.next()) {
		%>
		<tr>
			<td><a href="updateMember.jsp?id=<%=result.getString("id")%>"><%=result.getString("id")%></a></td>
			<td><%=result.getString("name")%></td>
			<td><%=result.getInt("class") == 1 ? "�Ϲ�ȸ��" : "������"%></td>
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