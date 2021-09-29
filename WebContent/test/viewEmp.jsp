<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	ResultSetMetaData rsmd = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>사원 테이블 조회</title>
</head>
<body>
	<table border="1">
		<%
			try {
				conn = ((DataSource) (new InitialContext().lookup("java:comp/env/jdbc/oracle"))).getConnection();
				stmt = conn.createStatement();
				rs = stmt.executeQuery("SELECT * from professor");
				// String[] emp = { "사원번호", "사원명", "직급", "상관번호", "입사일자", "급여", "커미션", "부서번호" };
				rsmd = rs.getMetaData();
		%>
			<tr>
		<%
				for(int i = 1; i <= rsmd.getColumnCount(); i++) {
		%>
					<th><%= rsmd.getColumnName(i) %></th>
		<%
				}
		%>
			</tr>
		<%
				while(rs.next()) {
		%>
			<tr>
		<%
					for(int i = 1; i <= rsmd.getColumnCount(); i++) {
		%>
						<td><%= rs.getString(i) %></td>
		<%
					}
				}
		%>
			 </tr>
		<%				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			}
		%>
	</table>
</body>
</html>