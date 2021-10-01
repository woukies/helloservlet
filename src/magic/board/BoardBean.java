package magic.board;

import java.sql.Timestamp;

public class BoardBean {
	public static int pageButtons = 4;
	public static int pageSize = 10;
	
	public static int boardCount;
	private int b_id;
	private Timestamp b_date;
	private String b_name;
	private String b_email;
	private String b_title;
	private String b_content;
	private int b_hit;
	private String b_pwd;
	private String b_ip;
	private int b_ref;
	private int b_step;
	private int b_level;

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getB_name() {
		return b_name;
	}

	public String getB_email() {
		return b_email;
	}

	public String getB_title() {
		return b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public void setB_email(String b_email) {
		this.b_email = b_email;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public Timestamp getB_date() {
		return b_date;
	}

	public void setB_date(Timestamp b_date) {
		this.b_date = b_date;
	}

	public int getB_hit() {
		return b_hit;
	}

	public void setB_hit(int b_hit) {
		this.b_hit = b_hit;
	}

	public String getB_pwd() {
		return b_pwd;
	}

	public void setB_pwd(String b_pwd) {
		this.b_pwd = b_pwd;
	}

	public String getB_ip() {
		return b_ip;
	}

	public void setB_ip(String b_ip) {
		this.b_ip = b_ip;
	}

	public int getB_ref() {
		return b_ref;
	}

	public int getB_step() {
		return b_step;
	}

	public int getB_level() {
		return b_level;
	}

	public void setB_ref(int b_ref) {
		this.b_ref = b_ref;
	}

	public void setB_step(int b_step) {
		this.b_step = b_step;
	}

	public void setB_level(int b_level) {
		this.b_level = b_level;
	}
}
