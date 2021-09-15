<%@page import="magic.member.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="mb" class="magic.member.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="mb" />
<%
	mb.setM_id(session.getAttribute("uid").toString());
	MemberDBBean manager = MemberDBBean.getInstance();

	if (manager.updateMember(mb) == 1) {
%>
		<script>
			alert("회원 정보가 수정되었습니다.");
			document.location.href = "main.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert("정보 수정이 실패했습니다.");
			history.go(-1);
		</script>
<%
	}

%>