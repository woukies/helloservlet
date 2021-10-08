package magic.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import myUtil.HanConv;

public class BoardDBBean {
	private static BoardDBBean boardDBBean;

	public static BoardDBBean getInstance() {
		if (boardDBBean == null) {
			boardDBBean = new BoardDBBean();
		}
		return boardDBBean;
	}

	public Connection getConnection() throws Exception {
		Context ctxt = new InitialContext();
		DataSource ds = (DataSource) ctxt.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insertBoard(BoardBean board) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int boardNumber = 0;
		int boardRef = 0;
		int isInsert = -1;

		try {
			conn = getConnection();

			rs = conn.prepareStatement("SELECT MAX(b_id) FROM boardt").executeQuery();
			if (rs.next()) {
				boardNumber = rs.getInt(1) + 1;
			} else {
				boardNumber = 1;
			}

			boardRef = board.getB_ref();
			if (boardRef == -1) { // 사용되지 않은 board.getB_id() 를 사용해서도 답글 여부 확인 가능
				boardRef = boardNumber;
			} else {
				if (rs != null) {
					rs.close();
				}
				rs = conn.prepareStatement("SELECT b_id, b_step FROM boardt WHERE b_ref = " + board.getB_ref()
						+ " AND b_step >= " + board.getB_step()).executeQuery();
				while (rs.next()) {
					conn.prepareStatement("UPDATE boardt SET b_step = " + (rs.getInt("b_step") + 1) + " WHERE b_id = "
							+ rs.getInt("b_id")).executeUpdate();
				}
			}

			pstmt = conn.prepareStatement(
					"INSERT INTO boardt "
					+ "(b_id, b_name, b_email, b_title, b_content, b_date, b_pwd, b_ip, b_ref, b_step, b_level, b_fname, b_fsize, b_rfname) "
					+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			pstmt.setInt(1, boardNumber);
			pstmt.setString(2, board.getB_name());
			pstmt.setString(3, board.getB_email());
			pstmt.setString(4, board.getB_title());
			pstmt.setString(5, board.getB_content());
			pstmt.setTimestamp(6, board.getB_date());
			pstmt.setString(7, board.getB_pwd());
			pstmt.setString(8, board.getB_ip());
			pstmt.setInt(9, boardRef);
			pstmt.setInt(10, board.getB_step());
			pstmt.setInt(11, board.getB_level());
			pstmt.setString(12, board.getB_fname());
			pstmt.setInt(13, board.getB_fsize());
			pstmt.setString(14, board.getB_rfname());
			pstmt.executeUpdate();

			isInsert = 1;
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(">> 추가 실패");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return isInsert;
	}

	public ArrayList<BoardBean> listBoard(int b_page) throws Exception {
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<BoardBean> boards = new ArrayList<BoardBean>();
		int pageSize = BoardBean.pageSize;

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT COUNT(*) FROM boardt");
			if(rs.next()) {
				BoardBean.boardCount = rs.getInt(1);
			}
			if (rs != null) {
				rs.close();
			}
			/*
			 * https://crescentm.tistory.com/406
			 * conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			 */
			rs = conn.createStatement().executeQuery(
					"SELECT * FROM ( SELECT ROW_NUMBER() OVER( ORDER BY b_ref DESC, b_step ASC ) \"B_ORDER\", b.* FROM boardt b ) "
							+ "WHERE b_order BETWEEN " + ((b_page - 1) * pageSize + 1) + " AND " + (b_page * pageSize));

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setB_id(rs.getInt("b_id"));
				board.setB_name(rs.getString("b_name"));
				board.setB_email(rs.getString("b_email"));
				board.setB_title(rs.getString("b_title"));
				board.setB_content(rs.getString("b_content"));
				board.setB_date(rs.getTimestamp("b_date"));
				board.setB_hit(rs.getInt("b_hit"));
				board.setB_pwd(rs.getString("b_pwd"));
				board.setB_ip(rs.getString("b_ip"));
				board.setB_ref(rs.getInt("b_ref"));
				board.setB_step(rs.getInt("b_step"));
				board.setB_level(rs.getInt("b_level"));
				board.setB_fname(rs.getString("b_fname"));
				board.setB_fsize(rs.getInt("b_fsize"));

				boards.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(">> 조회 실패");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return boards;
	}

	public BoardBean getBoard(int b_id, boolean doHit) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		BoardBean board = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM boardt WHERE b_id = ?");
			pstmt.setInt(1, b_id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				board = new BoardBean();
				board.setB_id(rs.getInt("b_id"));
				board.setB_name(rs.getString("b_name"));
				board.setB_pwd(rs.getString("b_pwd"));
				board.setB_email(rs.getString("b_email"));
				board.setB_title(rs.getString("b_title"));
				board.setB_content(rs.getString("b_content"));
				board.setB_date(rs.getTimestamp("b_date"));
				board.setB_ip(rs.getString("b_ip"));
				board.setB_ref(rs.getInt("b_ref"));
				board.setB_step(rs.getInt("b_step"));
				board.setB_level(rs.getInt("b_level"));
				board.setB_fname(rs.getString("b_fname"));
				board.setB_fsize(rs.getInt("b_fsize"));
				board.setB_rfname(rs.getString("b_rfname"));

				int b_hit = rs.getInt("b_hit");
				if (doHit) {
					b_hit++;
					conn.prepareStatement("UPDATE boardt SET b_hit = " + b_hit + " WHERE b_id = " + b_id)
							.executeUpdate();
				}
				board.setB_hit(b_hit);

			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(">> 조회 실패");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return board;
	}

	public int deleteBoard(int b_id, String b_pwd) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isDelete = -1;

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT b_pwd FROM boardt WHERE b_id = " + b_id);

			if (rs.next()) {
				if (rs.getString("b_pwd").equals(b_pwd)) {
					pstmt = conn.prepareStatement("DELETE FROM boardt WHERE b_id = ?");
					pstmt.setInt(1, b_id);
					isDelete = pstmt.executeUpdate();
				} else {
					isDelete = 0;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(">> 삭제 실패");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return isDelete;
	}

	public int editBoard(BoardBean board) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isEdit = -1;

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT b_pwd FROM boardt WHERE b_id = " + board.getB_id());

			if (rs.next()) {
				if (rs.getString("b_pwd").equals(board.getB_pwd())) {
					pstmt = conn.prepareStatement(
							"UPDATE boardt SET b_name = ?, b_email = ?, b_title = ?, b_content = ? WHERE b_id = ?");
					pstmt.setString(1, HanConv.toKor(board.getB_name()));
					pstmt.setString(2, board.getB_email());
					pstmt.setString(3, HanConv.toKor(board.getB_title()));
					pstmt.setString(4, HanConv.toKor(board.getB_content()));
					// pstmt.setTimestamp(5, board.getB_date());
					pstmt.setInt(5, board.getB_id());
					isEdit = pstmt.executeUpdate();
				} else {
					isEdit = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(">> 수정 실패");
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return isEdit;
	}
	
	public BoardBean getFileName (int b_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardBean board = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("SELECT b_fname, b_rfname FROM boardt WHERE b_id = ?");
			pstmt.setInt(1, b_id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				board = new BoardBean();
				board.setB_fname(rs.getString("b_fname"));
				board.setB_rfname(rs.getString("b_rfname"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return board;
	}
}
