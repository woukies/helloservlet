<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<big>������ Ŭ���̾�Ʈ�� IP: </big> <%= request.getRemoteAddr() %><br>
������ �̸�: <%= request.getServerName() %><br>
��û ���: <%= request.getMethod() %><br>
��������: <%= request.getProtocol() %><br>
��û�� URL: <%= request.getRequestURL() %><br>
��û�� URI: <%= request.getRequestURI() %><br>