package multicheckdemo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDAO {

	private static MemberDAO dao = new MemberDAO();

	public static MemberDAO getInstance() {
		return dao;
	}

	public void delete(int num[]) {
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		String sql = "select * from mem order by num";

		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e1) {

			e1.printStackTrace();
		}

		try (Connection conn = DriverManager.getConnection(url, user, password);
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();) {
			
			

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	public List<MemberDTO> search() {
		List<MemberDTO> list = new ArrayList<>();
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		String sql = "select * from mem order by num";

		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e1) {

			e1.printStackTrace();
		}

		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {

			while (rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setNum(rs.getInt("num"));
				dto.setAge(rs.getInt("age"));
				dto.setName(rs.getString("name"));
				dto.setLoc(rs.getString("location"));

				list.add(dto);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return list;

	}

}
//