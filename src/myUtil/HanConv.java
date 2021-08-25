package myUtil;

import java.net.URLEncoder;

public class HanConv {
	public static String toKor(String str) {
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

	public static String encodeKor(String str) {
		if (str == null || str.equals("null")) {
			return str;
		}
		try {
			return URLEncoder.encode(str, "euc-kr");
		} catch (Exception e) {
			e.printStackTrace();
			return str;
		}
	}
}
