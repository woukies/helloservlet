<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	// �Ķ���� null ó��?
	int isDelete = manager.deleteBoard(Integer.parseInt(request.getParameter("b_id")), request.getParameter("b_pwd"));
	
	switch(isDelete) {
	case 1:
		response.sendRedirect("list.jsp");
		break;
	case 0:
		%>
		<script>
			alert("Ʋ�� ��ȣ!");
			history.go(-1);
		</script>
		<%
		break;
	default:
		%>
		<script>
			alert("�� ���� ����!!");
			history.go(-2);
		</script>
		<%
		break;
	}
%>