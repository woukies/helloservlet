package question;

public class DivAndRemains {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public boolean process() {
		return (num / 10) == (num % 10);
	}
	
	public boolean process(int n) {
		num = n;
		return process();
	}
}
