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
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger";
			
			// ���� ���� // C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar > C:\Program Files\Tomcat 7.0\lib
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
	
			out.print("�����ͺ��̽� ������ �����߽��ϴ�.");
		} catch (SQLException e) {
			out.print("�����ͺ��̽� ������ �����߽��ϴ�.");
			out.print("SQLException: " + e.getMessage());
		} finally {
			if (conn != null) {
				conn.close();
			}
		}
	%>
</body>
</html>