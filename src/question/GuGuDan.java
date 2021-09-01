package question;

public class GuGuDan {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String process() {
		String s = "";

		for (int i = 1; i < 10; i++) {
			s += num + " * " + i + " = " + (num * i) + "<br>";
		}

		return s;
	}
}
