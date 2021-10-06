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
				
				out.println("폼 태그 필드 이름:" + file.getFieldName() + "<br>");
				out.println("파일 이름:" + file.getFileName() + "<br>");
				out.println("파일 크기:" + file.getSize() + "<br>");
				out.println("파일 확장자:" + file.getFileExt() + "<br>");
				out.println("파일 경로:" + file.getFilePathName() + "<br>");
				out.println("<hr>");
				
				fileCount++;
			}
		}
		
		out.println("파일 " + fileCount + "개를 업로드했습니다.");
	%>
</body>
</html>