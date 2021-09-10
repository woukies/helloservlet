<%@page import="myUtil.HanConv"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="java.sql.PreparedStatement"%>
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
		PreparedStatement pstm = null;
	%>
	<%
		try {
			conn = ((DataSource) (new InitialContext().lookup("java:comp/env/jdbc/oracle"))).getConnection();
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String mclass = request.getParameter("class");
		String tel = request.getParameter("phone");
		
		StringBuffer updateQuery = new StringBuffer();
		updateQuery.append("UPDATE member2 SET name = ?, class = ?, tel = ? where id = ?");
		
		try {
			pstm = conn.prepareStatement(updateQuery.toString());
			pstm.setString(1, HanConv.toKor(name));
			pstm.setInt(2, Integer.parseInt(mclass));
			pstm.setString(3, tel);
			pstm.setString(4, id);
			int flag = pstm.executeUpdate();
			
			if (flag == 1) {
	%>
	<p><%=id%>의 정보가 수정되었습니다.</p>
	[<a href="viewMember.jsp">목록보기</a>]
	<%
			} else {
	%>
	변경 실패
	<%
			}
		} catch (SQLException e) {
			e.printStackTrace();
	%>
	<font color="red">서버 불량, 잠시 후 다시 시도!</font>
	<%
		}
	%>
</body>
</html>