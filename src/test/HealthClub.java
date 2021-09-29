package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Scanner;

public class HealthClub {
	public static void main(String[] args) throws Exception {
		Scanner scanner = new Scanner(System.in);
		int menuIndex = 0;

		MemberManager manager = MemberManager.getInstance();
		manager.validateTable();

		while (menuIndex != 2) {
			printMenu(menuIndex);
			try {
				menuIndex = scanner.nextInt();
			} catch (Exception e) {
				scanner.nextLine();
				menuIndex = -1;
			}
			switch (menuIndex) {
			case 0:
			case 1:
			case 2:
				break;
			case 11:
				System.out.print("������ ȸ�� ���� �Է��ϼ��� >> ");
				try {
					int numMember = scanner.nextInt();
					HealthMember member = null;
					for (int i = 0; i < numMember; i++) {
						member = new HealthMember();
						System.out.println("ȸ�� ������ �Է��ϼ���.");
						System.out.print("ȸ�� ���̵�: ");
						member.setId(scanner.next());
						System.out.print("ȸ�� �̸�: ");
						member.setName(scanner.next());
						System.out.print("ȸ�� ����: ");
						member.setLocation(scanner.next());

						manager.insertMember(member);
					}
				} catch (Exception e) {
					System.out.println("�߸��� �Է��Դϴ�.");
					scanner.nextLine();
				}
				menuIndex = 1;
				break;
			case 22:
				System.out.print("������ ȸ�� ���̵� �Է��ϼ��� >> ");
				String idMember = scanner.next();
				int isDelete = manager.deleteMember(idMember);
				if (isDelete == 1) {
					System.out.println("�ش� �ؿ��� �����Ǿ����ϴ�.");
				} else if (isDelete == 0) {
					System.out.println("�������� �ʴ� ���̵��Դϴ�.");
				} else {
					System.out.println("������ �����߽��ϴ�.");
				}
				menuIndex = 1;
				break;
			case 33:
				ArrayList<HealthMember> members = manager.getMembers();
				System.out.println("��ϵ� ȸ������ " + members.size() + "�� �Դϴ�.");
				for (HealthMember m : members) {
					System.out.println(m.toString());
				}
				menuIndex = 1;
				break;
			}
		}

		scanner.close();
	}

	public static void printLine(String s) {
		int lineLength = 40;
		StringBuffer line = new StringBuffer();
		lineLength -= (s.getBytes().length / 2);
		if (lineLength <= 0) {
			lineLength = 2;
		}

		for (int i = 0; i < lineLength; i++) {
			line.append("=");
		}
		line.append(s);
		for (int i = 0; i < lineLength; i++) {
			line.append("=");
		}

		System.out.println(line.toString());
	}

	public static void printMenu(int i) {
		switch (i) {
		case 0:
			printLine("�ｺŬ�� ȸ������ ���α׷�");
			System.out.println("1. ȸ�� �������� | 2. ���α׷� ����");
			break;
		case 1:
			printLine("�Ϲ�ȸ�� ��������");
			System.out.println("11. �Ϲ�ȸ�� �����Է� | 22. �Ϲ�ȸ�� �������� | 33. �Ϲ�ȸ�� ����Ȯ�� | 0. �����ܰ�");
			break;
		default:
			System.out.println("�ùٸ� �޴��� ������ �ּ���. ");
		}
		printLine("");
		System.out.print("�޴��� �����ϼ��� >> ");
	}
}

class MemberManager {
	private static MemberManager memberManger;

	public static MemberManager getInstance() {
		if (memberManger == null) {
			memberManger = new MemberManager();
		}
		return memberManger;
	}

	public Connection getConnection() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
	}

	public void validateTable() throws Exception {
		Connection conn = null;

		try {
			conn = getConnection();
			try {
				conn.prepareStatement("SELECT id FROM healthmember").executeQuery();
			} catch (Exception e) {
				conn.prepareStatement("CREATE TABLE healthmember(" + "num NUMBER(5), " + "id VARCHAR2(10), "
						+ "name VARCHAR2(10), " + "location VARCHAR2(10))").executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.close();
			}
		}
	}

	public void insertMember(HealthMember member) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = 1;

		try {
			conn = getConnection();

			rs = conn.prepareStatement("SELECT MAX(num) FROM healthmember").executeQuery();
			if (rs.next()) {
				num = rs.getInt(1) + 1;
			}

			pstmt = conn.prepareStatement("INSERT INTO healthmember VALUES(?, ?, ?, ?)");
			pstmt.setInt(1, num);
			pstmt.setString(2, member.getId());
			pstmt.setString(3, member.getName());
			pstmt.setString(4, member.getLocation());
			pstmt.executeUpdate();
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
	}

	public int deleteMember(String id) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int isDelete = -1;

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT num FROM healthmember WHERE id = '" + id + "'");

			if (rs.next()) {
				pstmt = conn.prepareStatement("DELETE FROM healthmember WHERE num = ?");
				pstmt.setInt(1, rs.getInt(1));
				isDelete = pstmt.executeUpdate();
			} else {
				isDelete = 0;
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
		return isDelete;
	}

	public ArrayList<HealthMember> getMembers() throws Exception {
		Connection conn = null;
		ResultSet rs = null;
		ArrayList<HealthMember> members = new ArrayList<HealthMember>();

		try {
			conn = getConnection();
			rs = conn.createStatement().executeQuery("SELECT * FROM healthmember ORDER BY num ASC");

			while (rs.next()) {
				HealthMember member = new HealthMember();
				member.setNum(rs.getInt("num"));
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setLocation(rs.getString("location"));

				members.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (conn != null) {
				conn.close();
			}
		}

		return members;
	}
}

class HealthMember {
	private int num;
	private String id;
	private String name;
	private String location;

	@Override
	public String toString() {
		StringBuffer s = new StringBuffer();
		s.append("ȸ�� ��ȣ: " + num + "\n");
		s.append("ȸ�� ���̵�: " + id + "\n");
		s.append("ȸ�� �̸�: " + name + "\n");
		s.append("ȸ�� ����: " + location);

		return s.toString();
	}

	public int getNum() {
		return num;
	}

	public String getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getLocation() {
		return location;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}


