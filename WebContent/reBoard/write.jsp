<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
    <h1 style="text-align: center;">�� �� �� ��</h1>
    <table align="center">
        <form action="write_ok.jsp" method="POST">
            <tr>
                <td>�ۼ���</td>
                <td><input type="text" name="b_name" style="width: 100%;"></td>
                <td>�̸���</td>
                <td><input type="text" name="b_email" style="width: 100%;"></td>
            </tr>
            <tr>
                <td>������</td>
                <td colspan="3"><input type="text" name="b_title" style="width: 100%;"></td>
            </tr>
            <tr>
                <td colspan="4"><textarea name="b_content" rows="20" style="width: 100%;"></textarea></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="�۾���"></td>
                <td colspan="2"><input type="reset" value="�ٽ��ۼ�"></input></td>
            </tr>
        </form>
    </table>
</body>
</html>