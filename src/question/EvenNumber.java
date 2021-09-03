package question;

public class EvenNumber {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int process() {
		int sum = 0;
		for (int i = 0; i <= num; i += 2) {
			sum += i;
		}
		return sum;
	}

	public int process(int n) {
		num = n;
		return process();
	}
}
