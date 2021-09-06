<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<jsp:useBean id="array" class="question.Array"></jsp:useBean>
<jsp:setProperty property="*" name="array" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int intArray[] = new int[5];
		intArray[0] = array.getNum1();
		intArray[1] = array.getNum2();
		intArray[2] = array.getNum3();
		intArray[3] = array.getNum4();
		intArray[4] = array.getNum5();
		System.out.println(array.process(intArray));
	%>
	<hr>
	입력된 정수가
	<%=array.getNum1()%>와
	<%=array.getNum2()%>와
	<%=array.getNum3()%>와
	<%=array.getNum4()%>와
	<%=array.getNum5()%>에서 가장 큰 수는
	<%=array.process()%>
</body>
</html>