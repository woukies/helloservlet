function check_ok() {
	if (document.writeForm.b_name.value.length == 0) {
		alert("�̸��� ���ּ���.");
        document.writeForm.b_name.focus();
        return;
	}
	
	if (document.writeForm.b_title.value.length == 0) {
		alert("������ ���ּ���.");
        document.writeForm.b_title.focus();
        return;
	}
	
	if (document.writeForm.b_content.value.length == 0) {
		alert("������ ���ּ���.");
        document.writeForm.b_content.focus();
        return;
	}
	
	if (document.writeForm.b_pwd.value.length == 0) {
		alert("��й�ȣ�� ���ּ���.");
        document.writeForm.b_pwd.focus();
        return;
	}
	
	document.writeForm.submit();
}