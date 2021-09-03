package question;

public class Triangle {
	private int num1, num2, num3;

	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}

	public int getNum3() {
		return num3;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}

	public void setNum2(int num2) {
		this.num2 = num2;
	}

	public void setNum3(int num3) {
		this.num3 = num3;
	}

	public boolean process() {
		int max = Math.max(Math.max(num1, num2), num3);
		return (num1 + num2 + num3 - max) > max;
	}

	public boolean process(int n1, int n2, int n3) {
		if (((n1 + n2) <= n3) || ((n1 + n3) <= n2) || ((n2 + n3) <= n1)) {
			return false;
		} else {
			return true;
		}
	}
}
