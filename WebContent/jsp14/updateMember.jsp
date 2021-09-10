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
		System.out.println("DBCP ���� ����!");
		
		StringBuffer selectQuery = new StringBuffer();
		selectQuery.append("SELECT name, class, tel FROM member2 WHERE id = ?");
		
		String id = request.getParameter("id");
		pstm = conn.prepareStatement(selectQuery.toString());
		pstm.setString(1, id);
		
		rs = pstm.executeQuery();
		if(rs.next()) {
	%>
	<form action="updateProcess.jsp" method="post">
		<p>���̵�: <input type="text" name="id" value="<%=id%>" readonly></p>
		<p>�̸�: <input type="text" name="name" value="<%=rs.getString("name")%>"></p>
		<p>ȸ�����: <input type="text" name="class" value="<%=rs.getString("class")%>"></p>
		<p>��ȭ��ȣ: <input type="text" name="phone" value="<%=rs.getString("tel")%>"></p>
		<input type="submit" value="����"> <a href="viewMember.jsp">��Ϻ���</a>
	</form>
	<%	
		} else {
	%>
			<p><font color="red">���̵� ���ڱ� ��������!!</font></p>
			<a href="viewMember.jsp">��Ϻ���</a>
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