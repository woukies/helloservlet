<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
    <script type="text/javascript" src="script.js" charset="EUC-KR"></script>
</head>

<body>
    <table border="1" align="center">
        <form method="POST" name="regiForm" action="registerOk.jsp">
            <tr>
                <td colspan="2" align="center">
                    <h1>ȸ�� ���� ��û</h1>
                    '*' ǥ�� �׸��� �ʼ� �Է� �׸��Դϴ�.
                </td>
            </tr>
            <tr>
                <td width="80">User ID</td>
                <td><input type="text" name="m_id" size="20"><span class="req">*</span></td>
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
                <td><input type="text" name="m_name" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>�̸���</td>
                <td><input type="text" name="m_email" size="30"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>�ּ�</td>
                <td><input type="text" name="m_addr" size="40"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" onclick="check_ok()" value="���">
                    <input type="reset" value="�ٽ� �Է�">
                    <input type="button" onclick="javascript:window.location='login.jsp'" value="���Ծ���">
                </td>
            </tr>
        </form>
    </table>
</body>

</html>