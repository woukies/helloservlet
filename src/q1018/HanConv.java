package q1018;

public class HanConv {
	public static String toEUCKR(String str) {
		if (str == null || str.equals("null")) {
			return str;
		}
		try {
			return new String(str.getBytes("8859_1"), "euc-kr");
		} catch (Exception e) {
			e.printStackTrace();
			return str;
		}
	}
}
