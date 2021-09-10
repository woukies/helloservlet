<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.sql.DataSource"%>
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
	<%!
		Connection conn = null;
		DataSource ds = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
	%>
	<%
	try {
		Context ctx = new InitialContext();
		ds = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle");
		conn = ds.getConnection();
		System.out.println("DBCP 연동 성공!");
		
		StringBuffer selectQuery = new StringBuffer();
		selectQuery.append("SELECT name, class, tel FROM member2 WHERE id = ?");
		
		String id = request.getParameter("id");
		pstm = conn.prepareStatement(selectQuery.toString());
		pstm.setString(1, id);
		
		rs = pstm.executeQuery();
		if(rs.next()) {
	%>
	<form action="updateProcess.jsp" method="post">
		<p>아이디: <input type="text" name="id" value="<%=id%>" readonly></p>
		<p>이름: <input type="text" name="name" value="<%=rs.getString("name")%>"></p>
		<p>회원등급: <input type="text" name="class" value="<%=rs.getString("class")%>"></p>
		<p>전화번호: <input type="text" name="phone" value="<%=rs.getString("tel")%>"></p>
		<input type="submit" value="수정"> <a href="viewMember.jsp">목록보기</a>
	</form>
	<%	
		} else {
	%>
			<p><font color="red">아이디가 갑자기 없어졌네!!</font></p>
			<a href="viewMember.jsp">목록보기</a>
	<%
		}
	} catch (NamingException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		try {
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	%>
</body>
</html>