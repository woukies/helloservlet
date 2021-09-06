package question;

public class Capital {
	private String str;

	public String process() {
		StringBuffer result = new StringBuffer();
		
		for (char i = str.charAt(0); i >= 'A'; i--) {
			for (char j = 'A'; j <= i; j++) {
				result.append(j);
			}
			result.append("<br>");
		}
		
		return result.toString();
	}
	
	public String process(String str) {
		this.str = str;
		return process();
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}
}
