package picturedemo;


import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TestDAO {
	private File file;
	private Connection conn;
	private PreparedStatement pstmt;
	private Statement stmt;
	private ResultSet rs;

	private static TestDAO dao = new TestDAO();

	public TestDAO() {

	}

	public static TestDAO getInstance() {
		return dao;
	}

	private Connection init() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.OracleDriver");
		String url = "jdbc:oracle:thin://@127.0.0.1:1521:xe";
		String user = "hr";
		String password = "a1234";
		return DriverManager.getConnection(url, user, password);
	}

	private void exit() throws SQLException {
		if (conn != null)
			conn.close();
		
		if (rs != null)
			rs.close();
		
		if (stmt != null)
			stmt.close();
		
		if (pstmt != null)
			pstmt.close();

	}
	

	public List<TestDTO> search(){
		List<TestDTO> aList = new ArrayList<>();
		
		try {
			conn = init();
			stmt= conn.createStatement();
			String sql = "select * from Employees order by employee_id";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				
				
				aList.add(dto);
			}
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return aList;
	}
	public void insertMethod(String filename) {
		try {
			conn=init();
			String sql ="insert into preview values(preview_num_seq.nextval,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, filename);
			pstmt.executeUpdate();
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void deleteMethod(String[] arr) throws SQLException {
		try {
			
			
			conn=init();
			
			for(String i : arr) {
				String sql = "select filepath from preview where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, i);
				rs= pstmt.executeQuery();
				rs.next();
				file = new File("c://temp/"+rs.getString("filepath"));
				file.delete();
				
				sql = "delete from preview where num=?";
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, i);
				pstmt.executeUpdate();	
			}
			
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		}finally {
			exit();
		}

	}
	public List<TestDTO> selectMethod(){
		List<TestDTO> aList = new ArrayList<>();
		try {
			conn=init();
			String sql = "select * from preview order by num desc";
			pstmt=conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				TestDTO dto = new TestDTO();
				dto.setFilepath(rs.getString("filepath"));
				dto.setNum(rs.getInt("num"));
				aList.add(dto);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				exit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return aList;
		
		
	}
}
