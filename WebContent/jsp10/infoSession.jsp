<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[���� ������ ������ �޼ҵ带 ����� ����]</h3>
	</center>
	<hr>
	<%
		String id_str = session.getId();
		long lasttime = session.getLastAccessedTime();	// ������ ���� ��û �ð�(ms)
		long createdtime = session.getCreationTime();	// ���� ���� �ð�(ms)
		long time_used = (lasttime - createdtime) / (60 * 1000);	// ���� ���� �ð�
		int inactive = session.getMaxInactiveInterval() / 60; // ���� ��ȿ �ð�(s)
		boolean b_new = session.isNew(); // ó�� ���� ����
	%>
	[1] ���� ID��[<%= id_str %>] �Դϴ�.<br><hr>
	[2] ����� �� ����Ʈ�� �ӹ� �ð��� <%= time_used %>���Դϴ�.<br><hr>
	[3] ������ ��ȿ �ð��� <%= inactive %>���Դϴ�.<br><hr>
	[4] ������ ���� ����� ������?<br><br>
	<%
		out.print(b_new?"��!! ���ο� ������ ��������ϴ�.":"�ƴϿ�!! ���ο� ������ ������ �ʾҽ��ϴ�.");
	%>
</body>
</html>