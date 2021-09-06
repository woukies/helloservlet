package question;

public class Array4 {
	private int num;

	public String process() {
		StringBuffer result = new StringBuffer();
		int[] array = new int[this.num];

		for (int i = 0; i < array.length; i++) {
			array[i] = (int) (Math.random() * 100 + 1);
			for (int j = 0; j < i; j++) {
				if (array[j] == array[i]) {
					i--;
					break;
				}
			}
		}

		for (int i = 0; i < array.length; i++) {
			result.append(array[i] + " ");
			if ((i + 1) % 10 == 0) {
				result.append("<br>");
			}
		}

		return result.toString();
	}

	public String process(int num) {
		StringBuffer result = new StringBuffer();
		int[] array = new int[num];

		for (int i = 0; i < array.length; i++) {
			int r = (int) (Math.random() * 100 + 1);

			if (exists(array, i, r)) {
				i--;
				continue;
			}

			array[i] = r;
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

	public static boolean exists(int a[], int f, int r) {
		for (int i = 0; i < f; i++) {
			if (a[i] == r) {
				return true;
			}
		}
		return false;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
