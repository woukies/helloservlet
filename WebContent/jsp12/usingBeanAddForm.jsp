<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %> <!-- ����(��ġ) �߿� -->
<jsp:useBean id="memBean" class="magic.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="memBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	����� �Է��� �����Դϴ�.<hr>
	���̵�: <jsp:getProperty property="id" name="memBean"/><br>
	�̸�: <jsp:getProperty property="name" name="memBean"/><br>
	ȸ������: 
	<% 
		if(memBean.getMclass() == 1) {
			out.println("�Ϲ�ȸ��");
		} else {
			out.println("������");
		}
	%><br>
	��ȭ��ȣ:
	<jsp:getProperty property="phone1" name="memBean"/> -
	<jsp:getProperty property="phone2" name="memBean"/> -
	<jsp:getProperty property="phone3" name="memBean"/>
</body>
</html>