<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="myBean" class="hello.HelloBean"></jsp:useBean>

<hr>
#. �� ������ ����� �� ����ϱ�<br><br>
�̸�: <jsp:getProperty property="name" name="myBean"/><br>
����: <jsp:getProperty property="age" name="myBean"/><br>

<hr>
#. �� ������ �� ����ϱ�<br><br>
<jsp:setProperty property="name" name="myBean" value="������"/>
<jsp:setProperty property="age" name="myBean" value="10"/>
�̸�: <jsp:getProperty property="name" name="myBean"/><br>
����: <jsp:getProperty property="age" name="myBean"/><br>