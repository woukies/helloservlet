package question;

public class Array3 {
	private int num;

	public String process() {
		StringBuffer result = new StringBuffer();

		for (int i = 0; i < num; i++) {
			result.append(((int) (Math.random() * 100 + 1)) + " ");
			if ((i + 1) % 10 == 0) {
				result.append("<br>");
			}
		}

		return result.toString();
	}

	public String process(int num) {
		//setNum(num);
		int[] array = new int[num];
		StringBuffer result = new StringBuffer();

		for (int i = 0; i < array.length; i++) {
			array[i] = (int) (Math.random() * 100 + 1);
		}

		for (int i = 0; i < array.length; i++) {
			if (i == 0) {
				result.append(array[i] + " ");
			} else {
				if (i % 10 == 0) {
					result.append("<br>");
				}
				result.append(array[i] + " ");
			}
		}

		return result.toString();
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
