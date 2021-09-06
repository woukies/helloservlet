package question;

public class Asterisk {
	private int num;

	public String process() {
		StringBuffer res = new StringBuffer();
		
		for (int i = num; i > 0; i--) {
			for (int j = 0; j < i; j++) {
				res.append("*");
			}
			res.append("<br>");
		}
		
		return res.toString();
	}
	
	public String process(int num) {
		this.num = num;
		return process();
	}
	
	
	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
}
