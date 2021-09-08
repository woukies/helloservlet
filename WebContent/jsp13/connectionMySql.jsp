<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
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
		Connection conn = null;
		try {
			String url = "jdbc:mysql://localhost:3306/jspdb";
			String user = "root";
			String password = "root";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
	
			out.print("데이터베이스 연결이 성공했습니다.");
		} catch (SQLException e) {
			out.print("데이터베이스 연결이 실패했습니다.");
			out.print("SQLException: " + e.getMessage());
		} finally {
			if (conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>