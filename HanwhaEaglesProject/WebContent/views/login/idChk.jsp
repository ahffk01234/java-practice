<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%
		String uId = request.getParameter("uId");
		//JDBC 연결 정보
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
		String username = "team1_202304M";
		String password = "java";

		//JSON 응답을 위한 데이터 초기화
		boolean isAvailable = false;
		String message = "";

		//데이터베이스 연결 및 아이디 중복 검사
		try {
 		// JDBC 드라이버 로드
 		Class.forName(driver);
 
 		// 데이터베이스 연결
 		Connection conn = DriverManager.getConnection(url, username, password);
 
 		// SQL 쿼리 준비
 		String sql = "SELECT COUNT(*) FROM MEM WHERE mem_id = ?";
 		PreparedStatement pstmt = conn.prepareStatement(sql);
 		pstmt.setString(1, uId);
 
 		// 쿼리 실행
 		ResultSet rs = pstmt.executeQuery();
 		if (rs.next()) {
     		int count = rs.getInt(1);
     			if (count > 0) {
         // 아이디가 이미 존재하는 경우
         message = "사용불가";
     } else {
         // 아이디가 사용 가능한 경우
         isAvailable = true;
         message = "사용가능";
     }
 }
 
 		// 리소스 정리
		 rs.close();
 		pstmt.close();
 		conn.close();
		} catch (Exception e) {
 			e.printStackTrace();
 			message = "오류가 발생했습니다.";
		}

		//JSON 응답 생성
			String json = "{\"isAvailable\": " + isAvailable + ", \"message\": \"" + message + "\"}";
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(json);
%>