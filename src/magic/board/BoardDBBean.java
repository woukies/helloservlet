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
		int isInsert = -1;

		try {
			conn = getConnection();

			rs = conn.prepareStatement("SELECT MAX(b_id) FROM boardt").executeQuery();
			if (rs.next()) {
				boardNumber = rs.getInt(1) + 1;
			} else {
				boardNumber = 1;
			}

			pstmt = conn.prepareStatement("INSERT INTO boardt VALUES(?, ?, ?, ?, ?)");
			pstmt.setInt(1, boardNumber);
			pstmt.setString(2, HanConv.toKor(board.getB_name()));
			pstmt.setString(3, board.getB_email());
			pstmt.setString(4, HanConv.toKor(board.getB_title()));
			pstmt.setString(5, HanConv.toKor(board.getB_content()));
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

	public ArrayList<BoardBean> listBoard() throws Exception {
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<BoardBean> boards = new ArrayList<BoardBean>();

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT * FROM boardt ORDER BY b_id asc");

			while (rs.next()) {
				BoardBean board = new BoardBean();
				board.setB_id(rs.getInt("b_id"));
				board.setB_name(rs.getString("b_name"));
				board.setB_email(rs.getString("b_email"));
				board.setB_title(rs.getString("b_title"));
				board.setB_content(rs.getString("b_content"));
				
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
}
