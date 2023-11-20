package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCUtil {
	static {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 완료...");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패!!!");
			e.printStackTrace();
		}
	}
	
	/*
	 	커넥션 객체 생성하기
	 */	
	public static Connection getConnection() {
		try {
			return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pc03", "java");
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, Statement stmt, ResultSet rs) {
		if(rs != null) try { rs.close();}catch(SQLException ex) { }
		if(stmt != null) try { stmt.close();}catch(SQLException ex) { }
		if(pstmt != null) try { pstmt.close();}catch(SQLException ex) { }
		if(conn != null) try { conn.close();}catch(SQLException ex) { }
	}
}
