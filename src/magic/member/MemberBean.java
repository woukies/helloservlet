package magic.member;

import java.sql.Timestamp;

public class MemberBean {
	 private String m_id;
	 private String m_pw;
	 private String m_name;
	 private String m_email;
	 private Timestamp m_regdate;
	 private String m_addr;
	public String getM_id() {
		return m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public String getM_name() {
		return m_name;
	}
	public String getM_email() {
		return m_email;
	}
	public Timestamp getM_regdate() {
		return m_regdate;
	}
	public String getM_addr() {
		return m_addr;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public void setM_regdate(Timestamp m_regdate) {
		this.m_regdate = m_regdate;
	}
	public void setM_addr(String m_addr) {
		this.m_addr = m_addr;
	}
}
