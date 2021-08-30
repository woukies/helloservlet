<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="myBean" class="hello.HelloBean" scope="page"></jsp:useBean>
<hr>
*. 빈 생성후 저장된 값 출력하기<br><br>
이름: <%= myBean.getName() %><br>
나이: <%= myBean.getAge() %><br>
<hr>
*. 값 변경한 후 값 출력하기<br><br>
<% 
	myBean.setName("전수빈");
	myBean.setAge(10); 
%>
이름: <%= myBean.getName() %><br>
나이: <%= myBean.getAge() %><br>
<hr>