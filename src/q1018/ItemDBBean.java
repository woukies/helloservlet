package q1018;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ItemDBBean {
	private static ItemDBBean itemDBBean;

	public static ItemDBBean getInstance() {
		if (itemDBBean == null) {
			itemDBBean = new ItemDBBean();
		}
		return itemDBBean;
	}

	public Connection getConnection() throws Exception {
		Context ct = new InitialContext();
		DataSource ds = (DataSource) ct.lookup("java:comp/env/jdbc/oracle");
		return ds.getConnection();
	}

	public int insertItem(ItemBean item) throws Exception {
		Connection con = null;
		PreparedStatement ps = null;
		int isInsert = -1;

		try {
			con = getConnection();

			ps = con.prepareStatement("INSERT INTO item (name, price, description) VALUES (?, ?, ?)");
			ps.setString(1, HanConv.toEUCKR(item.getName()));
			ps.setInt(2, item.getPrice());
			ps.setString(3, HanConv.toEUCKR(item.getDescription()));

			isInsert = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return isInsert;
	}

	public ArrayList<ItemBean> listItem() throws Exception {
		Connection con = null;
		ResultSet rs = null;
		ArrayList<ItemBean> items = new ArrayList<ItemBean>();

		try {
			con = getConnection();
			rs = con.createStatement().executeQuery("SELECT * FROM item");

			while (rs.next()) {
				ItemBean item = new ItemBean();
				item.setName(rs.getString("name"));
				item.setPrice(rs.getInt("price"));
				item.setDescription(rs.getString("description"));

				items.add(item);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return items;
	}
}
