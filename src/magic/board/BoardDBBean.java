package magic.board;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
		int isInsert = -1;

		String query = "INSERT INTO boardt VALUES(?, ?, ?, ?)";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, HanConv.toKor(board.getB_name()));
			pstmt.setString(2, board.getB_email());
			pstmt.setString(3, HanConv.toKor(board.getB_title()));
			pstmt.setString(4, HanConv.toKor(board.getB_content()));
			pstmt.executeUpdate();

			isInsert = 1;
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

		return isInsert;
	}
}
