<%@page import="q1018.ItemDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="item" class="q1018.ItemBean"></jsp:useBean>
<jsp:setProperty property="*" name="item"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	ItemDBBean manager = ItemDBBean.getInstance();
	int isWrite = manager.insertItem(item);

	switch (isWrite) {
	case 1:
		%><a href="./itemWrite.jsp">결과 보기</a><%
		break;
	default:
		%><script>
			alert("입력이 실패하였습니다.");
			history.go(-1);
		</script><%
	}
%>
</body>
</html>