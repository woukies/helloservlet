<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>userTabColumnsForm</title>
<style>
	th, td {
		padding: 2px 5px;
	}
</style>
</head>
<body>
	<table border="1">
		<tr>
			<th>컬럼명</th>
			<th>컬럼형식</th>
			<th>컬럼길이</th>
			<th>널값여부</th>
		</tr>
		<%
			Connection con = null;
			ResultSet rs = null;
			String tableName = request.getParameter("tableName");
			if (tableName == null || tableName.length() == 0) {
				%><script>
					alert("테이블명을 입력해주세요.");
					history.go(-1);
				</script><%
			}
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
				
				rs = con.createStatement()
						.executeQuery("SELECT column_name, data_type, data_length, nullable " 
								+ "FROM user_tab_columns WHERE table_name = '" + tableName + "'");
				
				// StringBuffer: 뒤로가기 시 StringBuffer.setLength(0)으로 초기화 시켜줘야 함!
				
				while(rs.next()) {
					out.print("<tr>");
					out.print("<td>" + rs.getString("column_name") + "</td>");
					out.print("<td>" + rs.getString("data_type") + "</td>");
					out.print("<td>" + rs.getInt("data_length") + "</td>");
					out.print("<td>" + rs.getString("nullable") + "</td>");
					out.print("</tr>");
				}
		
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (rs != null) rs.close();
					if (con != null) con.close();
				} catch(SQLException e) {
					e.printStackTrace();
				}
			}
		%>
	</table>
</body>
</html>


