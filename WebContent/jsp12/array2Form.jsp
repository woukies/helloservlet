<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array2"></jsp:useBean>
<jsp:setProperty property="*" name="array" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<% array.setNum(); %>
	�Էµ� ������
	<%=array.getNum1()%>��
	<%=array.getNum2()%>��
	<%=array.getNum3()%>��
	<%=array.getNum4()%>��
	<%=array.getNum5()%>����
	3�� ����� <%= array.process() %>
</body>
</html>