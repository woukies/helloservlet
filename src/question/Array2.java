package question;

public class Array2 {
	private int[] num = new int[5];
	private int num1, num2, num3, num4, num5;

	public String process() {
		StringBuffer result = new StringBuffer();
		
		for (int i = 0; i < num.length; i++) {
			if (num[i] % 3 == 0) {
				result.append(num[i] + " ");
			}
		}
		
		return result.toString();
	}

	public String process(int[] array) {
		for (int i = 0; i < array.length; i++) {
			num[i] = array[i];
		}
		return process();
	}
	
	public void setNum() {
		num[0] = num1;
		num[1] = num2;
		num[2] = num3;
		num[3] = num4;
		num[4] = num5;
	}

	public int getNum1() {
		return num1;
	}

	public int getNum2() {
		return num2;
	}

	public int getNum3() {
		return num3;
	}

	public int getNum4() {
		return num4;
	}

	public int getNum5() {
		return num5;
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

	public void setNum4(int num4) {
		this.num4 = num4;
	}

	public void setNum5(int num5) {
		this.num5 = num5;
	}

}
