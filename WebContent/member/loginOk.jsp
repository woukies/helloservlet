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
			alert("�������� �ʴ� ȸ��");
			document.location.href = "login.jsp";
		</script>
<%
	} else {
		if (isLogin == 1) { 
		    //���ǿ� ����� ���� �߰��� main.jsp �� �̵�
		    session.setAttribute("uid", mb.getM_id());
		    session.setAttribute("uname", mb.getM_name());
		    response.sendRedirect("main.jsp"); // document.location.href = "main.jsp";
		} else if (isLogin == 0) { 	
%>
			<script>
				alert("��й�ȣ�� ���� �ʽ��ϴ�.");
				history.go(-1); // history.back();
			</script>
<%
		} else {
%>
			<script>
				alert("���̵� ���� �ʽ��ϴ�.");
				document.location.href = "login.jsp";
			</script>
<%
		} 
	}
%>