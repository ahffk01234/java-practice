<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Java Server Page
	//html과 java코드를 병행 작성할 수 있는 영역
	//초기 개발 당시에는 서버의 역할을 담당했지만 현재는 view(결과페이지)역할로 사용중..

	//현재 예제에서는 서버의 역할(Controller)로 활용될 예정 (with. JDBC)
	
	/* JDBC 작성 흐름
	
		1. 연결할 DB 설치여부 확인
		2. JAVA와 DB를 연결하기 위한 라이브러리 필요 - ojdbc.jar
		3. Class.forName()을 이용해 드라이버 로딩
	*/
	
	String uId = request.getParameter("userId");
	String uPw = request.getParameter("userPw");
	
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
	/* 4. DriverManager를 통해 Connection객체 생성 */
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";	Connection conn = DriverManager.getConnection(url, "team1_202304M", "java");
	/* 5. SQL구문 실행을 위한 Statement객체 생성 후 응답 결과 생성 */
	Statement stmt = conn.createStatement();
	String sql = "select mem_id from mem "
				+ "where mem_id = '" + uId
				+ "' and mem_pw = '" + uPw + "'";
	ResultSet rs = stmt.executeQuery(sql); //실행결과를 ResultSet객체로 받음
%>	
