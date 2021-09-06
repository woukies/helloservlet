package question;

public class Alphabet {
	private char chr;
	private String str;

	public String process() {
		StringBuffer result = new StringBuffer();
		for (char i = 'a'; i <= chr; i++) {
			result.append(i);
		}

		return result.toString();
	}

	public String process(char c) {
		chr = c;
		return process();
	}

	public String process(String s) {
		StringBuffer result = new StringBuffer();
		char c1 = 'a', c2 = s.charAt(0);

		do {
			result.append(c1);
			c1 = (char) (c1 + 1);
		} while (c2 <= c2);

		return result.toString();
	}

	public char getChr() {
		return chr;
	}

	public void setChr(char chr) {
		this.chr = chr;
	}

	public String getStr() {
		return str;
	}

	public void setStr(String str) {
		this.str = str;
	}
}
