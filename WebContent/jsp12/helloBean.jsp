<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="myBean" class="hello.HelloBean" scope="page"></jsp:useBean>
<hr>
*. �� ������ ����� �� ����ϱ�<br><br>
�̸�: <%= myBean.getName() %><br>
����: <%= myBean.getAge() %><br>
<hr>
*. �� ������ �� �� ����ϱ�<br><br>
<% 
	myBean.setName("������");
	myBean.setAge(10); 
%>
�̸�: <%= myBean.getName() %><br>
����: <%= myBean.getAge() %><br>
<hr>