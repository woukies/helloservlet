package question;

public class Three {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public boolean process() {
		return (num % 3) == 0;
	}
	
	public boolean process(int n) {
		num = n;
		return process();
	}
}
