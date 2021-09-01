package question;

public class Season {
	private int month;

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public String process() {
		switch (month) {
		case 3:
		case 4:
		case 5:
			return "봄";
		case 6:
		case 7:
		case 8:
			return "여름";
		case 9:
		case 10:
		case 11:
			return "가을";
		case 12:
		case 1:
		case 2:
			return "겨울";
		default:
			return "?";
		}
	}
	
	public String process(int m) {
		month = m;
		return process();
	}
}
