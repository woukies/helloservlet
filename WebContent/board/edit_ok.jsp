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
	
	switch(isEdit) {
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