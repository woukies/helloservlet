<%@page import="java.util.Date"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="magic.member.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="mb" class="magic.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb" />
	<%
		MemberDBBean manager = MemberDBBean.getInstance();

		if (manager.confirmID(mb.getM_id()) == 1) {
	%>
			<script>
				alert("�ߺ��Ǵ� ���̵� �����մϴ�.");
				//document.location.href = "register.jsp";
				history.back();
			</script>	
	<%
		} else {
			mb.setM_regdate(new Timestamp(new Date().getTime()));
			if (manager.insertMember(mb) == 1) {
	%>
				<script>
					alert("ȸ�������� ���ϵ帳�ϴ�.\nȸ������ �α��� ���ּ���.");
					document.location.href = "login.jsp";
				</script>
	<%
			} else {
	%>
				<script>
					alert("ȸ�����Կ� �����߽��ϴ�.");
					document.location.href = "register.jsp";
				</script>
	<%
			}
		}
	%>