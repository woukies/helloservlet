function check_ok() {
	if (document.writeForm.b_name.value.length == 0) {
		alert("捞抚阑 结林技夸.");
        document.writeForm.b_name.focus();
        return;
	}
	
	if (document.writeForm.b_title.value.length == 0) {
		alert("力格阑 结林技夸.");
        document.writeForm.b_title.focus();
        return;
	}
	
	if (document.writeForm.b_content.value.length == 0) {
		alert("郴侩阑 结林技夸.");
        document.writeForm.b_content.focus();
        return;
	}
	
	document.writeForm.submit();
}