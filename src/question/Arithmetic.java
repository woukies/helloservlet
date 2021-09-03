package question;

public class Arithmetic {
	private int num1, num2;
	private String operator;

	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}

	public String getOperator() {
		return operator;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public String process() {
		switch (operator) {
		case "+":
			return String.valueOf(num1 + num2);
		case "-":
			return String.valueOf(num1 - num2);
		case "*":
			return String.valueOf(num1 * num2);
		case "/":
			if (num2 == 0) {
				return "0으로 나눌 수 없습니다";
			}
			return String.valueOf(num1 / num2);
		default:
			return "사칙연산이 아닙니다";
		}
	}

	public String process(int n1, String c, int n2) {
		num1 = n1;
		num2 = n2;
		operator = c;
		return process();
	}
}
