package question;

public class Multiple {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String process() {
		String result = "";

		if (num % 3 == 0) {
			result += "3�� ����̴�<br>";
		}

		if (num % 5 == 0) {
			result += "5�� ����̴�<br>";
		}

		if (num % 8 == 0) {
			result += "8�� ����̴�<br>";
		}

		if (result.length() == 0) {
			result += "3, 5, 8 ��� ����� �ƴϴ�";
		}

		return result;
	}

	public String process(int n) {
		boolean multiple = false;
		StringBuffer strBuffer = new StringBuffer();

		if (n % 3 == 0) {
			strBuffer.append("3�� ����̴�<br>");
			multiple = true;
		}

		if (n % 5 == 0) {
			strBuffer.append("5�� ����̴�<br>");
			multiple = true;
		}

		if (n % 8 == 0) {
			strBuffer.append("8�� ����̴�<br>");
			multiple = true;
		}

		if (!multiple) {
			strBuffer.append("��� ����� �ƴϴ�");
		}

		return strBuffer.toString();
	}
}
