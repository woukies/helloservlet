<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="capital" class="question.Capital"></jsp:useBean>
<jsp:setProperty property="str" name="capital"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<hr>
	�Էµ� ���ĺ��� <%= capital.getStr() %>��<br>
	<%= capital.process() %>
</body>
</html>