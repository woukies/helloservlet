<%@page import="com.jspsmart.upload.File"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		SmartUpload su = new SmartUpload();
		su.initialize(pageContext);
		su.upload();
		int last = su.getFiles().getCount();
		int fileCount = 0;
		
		for (int i = 0; i < last; i++) {
			File file = su.getFiles().getFile(i);
			
			if(!file.isMissing()) {
				file.saveAs("/files/"+file.getFileName());
				
				out.println("�� �±� �ʵ� �̸�:" + file.getFieldName() + "<br>");
				out.println("���� �̸�:" + file.getFileName() + "<br>");
				out.println("���� ũ��:" + file.getSize() + "<br>");
				out.println("���� Ȯ����:" + file.getFileExt() + "<br>");
				out.println("���� ���:" + file.getFilePathName() + "<br>");
				out.println("<hr>");
				
				fileCount++;
			}
		}
		
		out.println("���� " + fileCount + "���� ���ε��߽��ϴ�.");
	%>
</body>
</html>