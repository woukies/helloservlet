<%@page import="java.io.File"%>
<%@page import="magic.board.BoardBean"%>
<%@page import="magic.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	BoardDBBean manager = BoardDBBean.getInstance();
	// �Ķ���� null ó��?
	int b_id = Integer.parseInt(request.getParameter("b_id"));
	String b_fname = manager.getBoard(b_id, false).getB_fname();
	int b_page;
	if(request.getParameter("b_page") == null) {
		b_page = 1;
	} else {
		b_page = Integer.parseInt(request.getParameter("b_page"));
	}
	
	String fileDir = "D:\\�л���\\Spring Framework\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\jsp\\files\\";
	
	int isDelete = manager.deleteBoard(b_id, request.getParameter("b_pwd"));
	switch(isDelete) {
	case 1:
		if (b_fname != null) {
			File file = new File(fileDir + b_fname);
			file.delete();
		}
		response.sendRedirect("list.jsp?b_page=" + b_page);
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