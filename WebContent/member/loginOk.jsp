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
		    session.setAttribute("id", mb.getM_id());
		    session.setAttribute("name", mb.getM_name());
%>
			<script>
			    document.location.href = "main.jsp";
			</script>
<%
		} else if (isLogin == 0) { 	
%>
			<script>
				alert("��й�ȣ�� ���� �ʽ��ϴ�.");
				history.back();
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