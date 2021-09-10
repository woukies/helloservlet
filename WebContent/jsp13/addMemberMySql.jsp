<%@page import="java.sql.*"%>
<%@page import="myUtil.HanConv" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	Connection conn = null;
	Statement state = null;
	
	String url = "jdbc:mysql://localhost:3306/jspdb";
	String user = "root";
	String password = "root";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String mclass = request.getParameter("mclass");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			state = conn.createStatement();
	
			StringBuffer query = new StringBuffer();
			
			query.append("insert into member2 values('");
			query.append(id + "', '");
			query.append(pw + "', '");
			query.append(HanConv.toKor(name) + "', ");
			query.append(mclass + ", '");
			query.append(phone1 + "-" + phone2 + "-" + phone3 + "')");
			
			System.out.println(query);
			int res = state.executeUpdate(query.toString());
			
			if (res == 1) {
	%>
				추가 성공<br>
				<a href="addFormMySql.html">추가 작업</a>
				<a href="viewMemberMySql.jsp">검색 작업</a>
	<%
			} else {
	%>
				<font color="red">추가 실패</font>
	<%		
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
	%>
			서버 불량, 잠시 후 다시 시도
	<%
		}
	%>
</body>
</html>