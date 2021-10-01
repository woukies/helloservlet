<%@page import="java.sql.Timestamp"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="board" class="magic.board.BoardBean"></jsp:useBean>
<jsp:setProperty property="*" name="board" />

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	// board.setB_date(new Timestamp(System.currentTimeMillis()));
	int isEdit = manager.editBoard(board);
	int b_page;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
	
	switch(isEdit) {
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