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
	
	document.writeForm.submit();
}