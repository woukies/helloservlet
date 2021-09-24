function check_ok() {
	if (document.writeForm.b_name.value.length == 0) {
		alert("이름을 써주세요.");
        document.writeForm.b_name.focus();
        return;
	}
	
	if (document.writeForm.b_title.value.length == 0) {
		alert("제목을 써주세요.");
        document.writeForm.b_title.focus();
        return;
	}
	
	if (document.writeForm.b_content.value.length == 0) {
		alert("내용을 써주세요.");
        document.writeForm.b_content.focus();
        return;
	}
	
	if (document.writeForm.b_pwd.value.length == 0) {
		alert("비밀번호를 써주세요.");
        document.writeForm.b_pwd.focus();
        return;
	}
	
	document.writeForm.submit();
}