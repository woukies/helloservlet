function check_ok() {
    if (document.regiForm.m_id.value.length == 0) {
        alert("���̵� ���ּ���.");
        document.regiForm.m_id.focus();
        return;
    }
    if (document.regiForm.m_id.value.length < 4) {
        alert("���̵�� 4���� �̻��̾�� �մϴ�.");
        document.regiForm.m_id.focus();
        return;
    }
    if (document.regiForm.m_pw.value.length == 0) {
        alert("�н������ �ݵ�� �Է��ؾ� �մϴ�.");
        document.regiForm.m_pw.focus();
        return;
    }
    if (document.regiForm.m_pw.value != document.regiForm.m_pw2.value) {
        alert("�н����尡 ��ġ���� �ʽ��ϴ�.");
        document.regiForm.m_pw2.focus();
        return;
    }
    if (document.regiForm.m_name.value.length == 0) {
        alert("�̸��� ���ּ���.");
        document.regiForm.m_name.focus();
        return;
    }
    if (document.regiForm.m_email.value.length == 0) {
        alert("�̸����� ���ּ���.");
        document.regiForm.m_email.focus();
        return;
    }

    document.regiForm.submit();
}