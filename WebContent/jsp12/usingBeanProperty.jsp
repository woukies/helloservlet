<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<jsp:useBean id="myBean" class="hello.HelloBean"></jsp:useBean>

<hr>
#. 빈 생성후 저장된 값 출력하기<br><br>
이름: <jsp:getProperty property="name" name="myBean"/><br>
나이: <jsp:getProperty property="age" name="myBean"/><br>

<hr>
#. 값 변경한 후 출력하기<br><br>
<jsp:setProperty property="name" name="myBean" value="전수빈"/>
<jsp:setProperty property="age" name="myBean" value="10"/>
이름: <jsp:getProperty property="name" name="myBean"/><br>
나이: <jsp:getProperty property="age" name="myBean"/><br>