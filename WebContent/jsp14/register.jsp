<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="EUC-KR">
    <title>Insert title here</title>
</head>

<body>
    <table>
        <tr>
            <td colspan="2">
                <h1>회원 가입 신청</h1>
                '*' 표시 항목은 필수 입력 항목입니다.
            </td>
        </tr>
        <tr>
            <td>User ID</td>
            <td><input type="text" name="id"><span class="req">*</span></td>
        </tr>
        <tr>
            <td>암호</td>
            <td><input type="text" name="pw1"><span class="req">*</span></td>
        </tr>
        <tr>
            <td>암호 확인</td>
            <td><input type="text" name="pw2"><span class="req">*</span></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><input type="text" name="name"><span class="req">*</span></td>
        </tr>
        <tr>
            <td>E-mail</td>
            <td><input type="text" name="mail"><span class="req">*</span></td>
        </tr>
        <tr>
            <td>주소</td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td colspan="2">
                <button>등록</button>
                <button>다시 입력</button>
                <button>가입안함</button>
            </td>
        </tr>
    </table>
</body>

</html>