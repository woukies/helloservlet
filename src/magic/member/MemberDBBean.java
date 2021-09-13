package magic.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myUtil.HanConv;

public class MemberDBBean {
	private static MemberDBBean memberDBbean;

	public static MemberDBBean getInstance() {
		if (memberDBbean == null) {
			memberDBbean = new MemberDBBean();
		}
		return memberDBbean;
	}

	public Connection getConnection() throws Exception {
		Context ctxt = new InitialContext();
		DataSource ds = (DataSource) ctxt.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insertMember(MemberBean member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int isDone = -1;

		String query = "INSERT INTO membert VALUES(?, ?, ?, ?, ?, ?)";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, member.getM_id());
			pstmt.setString(2, member.getM_pw());
			pstmt.setString(3, HanConv.toKor(member.getM_name()));
			pstmt.setString(4, member.getM_email());
			pstmt.setTimestamp(5, member.getM_regdate());
			pstmt.setString(6, HanConv.toKor(member.getM_addr()));
			pstmt.executeUpdate();

			isDone = 1;
			System.out.println(">> 추가 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">> 추가 실패");
		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

		return isDone;
	}

	public int confirmID(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isExist = -1;

		String query = "SELECT mem_uid FROM membert WHERE mem_uid = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				isExist = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

		return isExist;
	}

	/* 사용자 인증시 사용하는 메소드 */
	public int userCheck(String id, String pw) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isYou = -1;

		String query = "SELECT mem_pwd FROM membert WHERE mem_uid = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) { // 아이디가 일치하는 로우 존재
				if (rs.getString("mem_pwd").equals(pw)) { // 패스워드도 일치
					isYou = 1;
				} else { // 패스워드가 불일치
					isYou = 0;
				}
			} else { // 해당 아이디가 존재하지 않음
				isYou = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return isYou;
	}

	/* 아이디가 일치하는 멤버의 정보를 얻어오는 메소드 */
	public MemberBean getMember(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberBean member = null;

		String query = "SELECT * FROM membert WHERE mem_uid = ?";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) { // 아이디가 일치하는 로우 존재
				member = new MemberBean();
				member.setM_id(rs.getString("mem_uid"));
				member.setM_pw(rs.getString("mem_pwd"));
				member.setM_name(rs.getString("mem_name"));
				member.setM_email(rs.getString("mem_email"));
				member.setM_regdate(rs.getTimestamp("mem_regdate"));
				member.setM_addr(rs.getString("mem_address"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

		return member;
	}

}
