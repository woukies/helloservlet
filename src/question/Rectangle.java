package question;

public class Rectangle {
	private int x, y;

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}

	public void setX(int x) {
		this.x = x;
	}

	public void setY(int y) {
		this.y = y;
	}

	public boolean process() {
		return 100 <= x && x <= 200 && 100 <= y && y <= 200;
	}

	public boolean process(int x, int y) {
		this.x = x;
		this.y = y;
		return process();
	}
}
