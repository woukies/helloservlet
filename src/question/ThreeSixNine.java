package question;

public class ThreeSixNine {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String process() {
		int count = 0;
		for (int i = num; i > 0; i /= 10) {
			switch (i % 10) {
			case 3:
			case 6:
			case 9:
				count++;
			default:
				break;
			}
		}

		String result = "¹Ú¼ö";
		if (count == 0) {
			result += "¾øÀ½";
		} else {
			for (int i = 0; i < count; i++) {
				result += "Â¦";
			}
		}

		return result;
	}

	public String process(int n) {
		String result = "";
		int count = 0;

		int a = n / 10;
		int b = n % 10;

		if (a % 3 == 0) {
			count++;
		}

		if (b != 0 && b % 3 == 0) {
			count++;
		}

		if (count == 2) {
			result = "¹Ú¼öÂ¦Â¦";
		}

		if (count == 1) {
			result = "¹Ú¼öÂ¦";
		}

		if (count == 0) {
			result = "¹Ú¼ö¾øÀ½";
		}

		return result;
	}

}
