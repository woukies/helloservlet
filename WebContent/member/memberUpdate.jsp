<%@page import="magic.member.MemberBean"%>
<%@page import="magic.member.MemberDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDBBean manager = MemberDBBean.getInstance();
	MemberBean mb = manager.getMember(session.getAttribute("uid").toString());
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="EUC-KR"></script>
</head>

<body>
    <table border="1" align="center">
        <form method="POST" name="updateForm" action="memberUpdateOk.jsp">
            <tr>
                <td colspan="2" align="center">
                    <h1>ȸ�� ���� ����</h1>
                    '*' ǥ�� �׸��� �ʼ� �Է� �׸��Դϴ�.
                </td>
            </tr>
            <tr>
                <td width="80">User ID</td>
                <td><%= mb.getM_id() %></td>
            </tr>
            <tr>
                <td>��ȣ</td>
                <td><input type="password" name="m_pw" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>��ȣ Ȯ��</td>
                <td><input type="password" name="m_pw2" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>�̸�</td>
                <td><%= mb.getM_name() %></td>
            </tr>
            <tr>
                <td>�̸���</td>
                <td><input type="text" name="m_email" size="30" value="<%= mb.getM_email() %>"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>�ּ�</td>
                <td><input type="text" name="m_addr" size="40" value="<%= mb.getM_addr() == null ? "" : mb.getM_addr() %>"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" onclick="update_check_ok()" value="����">
                    <input type="reset" value="�ٽ� �Է�">
                    <input type="button" onclick="javascript:window.location='main.jsp'" value="��������">
                </td>
            </tr>
        </form>
    </table>
</body>

</html>