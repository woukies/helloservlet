function check_ok() {
    if (document.regiForm.m_id.value.length == 0) {
        alert("아이디를 써주세요.");
        document.regiForm.m_id.focus();
        return;
    }
    if (document.regiForm.m_id.value.length < 4) {
        alert("아이디는 4글자 이상이어야 합니다.");
        document.regiForm.m_id.focus();
        return;
    }
    if (document.regiForm.m_pw.value.length == 0) {
        alert("패스워드는 반드시 입력해야 합니다.");
        document.regiForm.m_pw.focus();
        return;
    }
    if (document.regiForm.m_pw.value != document.regiForm.m_pw2.value) {
        alert("패스워드가 일치하지 않습니다.");
        document.regiForm.m_pw2.focus();
        return;
    }
    if (document.regiForm.m_name.value.length == 0) {
        alert("이름을 써주세요.");
        document.regiForm.m_name.focus();
        return;
    }
    if (document.regiForm.m_email.value.length == 0) {
        alert("이메일을 써주세요.");
        document.regiForm.m_email.focus();
        return;
    }

    document.regiForm.submit();
}

function update_check_ok() {
    if (document.updateForm.m_pw.value.length == 0) {
        alert("패스워드는 반드시 입력해야 합니다.");
        document.updateForm.m_pw.focus();
        return;
    }
    if (document.updateForm.m_pw.value != document.updateForm.m_pw2.value) {
        alert("패스워드가 일치하지 않습니다.");
        document.updateForm.m_pw2.focus();
        return;
    }
    if (document.updateForm.m_email.value.length == 0) {
        alert("이메일을 써주세요.");
        document.updateForm.m_email.focus();
        return;
    }

    document.updateForm.submit();
}