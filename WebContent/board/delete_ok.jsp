<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	// 파라미터 null 처리?
	int isDelete = manager.deleteBoard(Integer.parseInt(request.getParameter("b_id")), request.getParameter("b_pwd"));
	int b_page;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
	
	switch(isDelete) {
	case 1:
		response.sendRedirect("list.jsp?b_page=" + b_page);
		break;
	case 0:
		%>
		<script>
			alert("틀린 암호!");
			history.go(-1);
		</script>
		<%
		break;
	default:
		%>
		<script>
			alert("글 삭제 실패!!");
			history.go(-2);
		</script>
		<%
		break;
	}
%>