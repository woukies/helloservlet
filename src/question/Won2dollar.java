package question;

public class Won2dollar {
	private int won;

	public int getWon() {
		return won;
	}

	public void setWon(int won) {
		this.won = won;
	}

	public double process() {
		return won / 1200.0;
	}

	public double process(int n) {
		won = n;
		return process();
	}
}
