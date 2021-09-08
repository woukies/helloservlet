package question;

public class TwoArray {
	private int num;

	public String process() {
		int[][] arr = new int[num][num];
		StringBuffer result = new StringBuffer();

		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				arr[i][j] = (int) (Math.random() * 10 + 1);
				result.append(arr[i][j] + " ");
			}
			result.append("<br>");
		}

		return result.toString();
	}

	public String process(int num) {
		setNum(num);

		StringBuffer result = new StringBuffer();
		int[][] array = new int[this.num][this.num];

		for (int i = 0; i < array.length; i++) {
			for (int j = 0; j < array[i].length; j++) {
				array[i][j] = (int) (Math.random() * 10 + 1);
			}
		}
		
		for (int i = 0; i < array.length; i++) {
			for (int j = 0; j < array[i].length; j++) {
				result.append(array[i][j] + "&nbsp;&nbsp;&nbsp;");
			}
			result.append("<br>");
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
