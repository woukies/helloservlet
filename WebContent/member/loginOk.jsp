<%@page import="magic.member.MemberDBBean"%>
<%@page import="magic.member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	MemberDBBean manager = MemberDBBean.getInstance();
	MemberBean mb = manager.getMember(request.getParameter("m_id"));
	int isLogin = manager.userCheck(request.getParameter("m_id"), request.getParameter("m_pw"));
	
	if(mb == null) {
%>
		<script>
			alert("존재하지 않는 회원");
			document.location.href = "login.jsp";
		</script>
<%
	} else {
		if (isLogin == 1) { 
		    //세션에 사용자 정보 추가후 main.jsp 로 이동
		    session.setAttribute("uid", mb.getM_id());
		    session.setAttribute("uname", mb.getM_name());
		    response.sendRedirect("main.jsp"); // document.location.href = "main.jsp";
		} else if (isLogin == 0) { 	
%>
			<script>
				alert("비밀번호가 맞지 않습니다.");
				history.go(-1); // history.back();
			</script>
<%
		} else {
%>
			<script>
				alert("아이디가 맞지 않습니다.");
				document.location.href = "login.jsp";
			</script>
<%
		} 
	}
%>