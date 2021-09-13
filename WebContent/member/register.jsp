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
                    <h1>회원 가입 신청</h1>
                    '*' 표시 항목은 필수 입력 항목입니다.
                </td>
            </tr>
            <tr>
                <td width="80">User ID</td>
                <td><input type="text" name="m_id" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>암호</td>
                <td><input type="password" name="m_pw" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>암호 확인</td>
                <td><input type="password" name="m_pw2" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" name="m_name" size="20"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" name="m_email" size="30"><span class="req">*</span></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" name="m_addr" size="40"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="button" onclick="check_ok()" value="등록">
                    <input type="reset" value="다시 입력">
                    <input type="button" onclick="javascript:window.location='login.jsp'" value="가입안함">
                </td>
            </tr>
        </form>
    </table>
</body>

</html>