package question;

public class Money {
	private int won;

	public String process() {
		StringBuffer result = new StringBuffer();
		int[] money = { 50000, 10000, 1000, 500, 100, 50, 10, 1 };
		int won = this.won;

		for (int i = 0, j; i < money.length; i++) {
			j = won / money[i];
			if (j > 0) {
				won %= money[i];
				result.append(money[i] + "원 짜리: " + j + "개<br>");
			}
		}

		return result.toString();
	}

	public String process(int n) {
		won = n;
		return process();
	}

	public int getWon() {
		return won;
	}

	public void setWon(int won) {
		this.won = won;
	}
}
