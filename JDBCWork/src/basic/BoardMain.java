package basic;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import Util.JDBCUtil;



//위의 테이블을 작성하고 게시판을 관리하는
//다음 기능들을 구현하시오.
//
//기능 구현하기 ==> 전체 목록 출력, 새글작성, 수정, 삭제, 검색 
// 
//------------------------------------------------------------
//
//게시판 테이블 구조 및 시퀀스
//
//create table jdbc_board(
//    board_no number not null,  -- 번호(자동증가)
//    board_title varchar2(100) not null, -- 제목
//    board_writer varchar2(50) not null, -- 작성자
//    board_date date not null,   -- 작성날짜
//    board_content clob,     -- 내용
//    constraint pk_jdbc_board primary key (board_no)
//);
//create sequence board_seq
//    start with 1   -- 시작번호
//    increment by 1; -- 증가값
//		
//----------------------------------------------------------

// 시퀀스의 다음 값 구하기
//  시퀀스이름.nextVal



public class BoardMain {

	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private Scanner scan = new Scanner(System.in);
	
	
	public void displayMenu() {
		System.out.println();
		System.out.println("----------------------");
		System.out.println("  === 작 업 선 택 ===");
		System.out.println("  1. 게시판 작성");
		System.out.println("  2. 게시판 삭제");
		System.out.println("  3. 게시판 수정");
		System.out.println("  4. 전체 자료 출력");
		System.out.println("  5. 게시판 검색");
		System.out.println("  6. 작업 끝.");
		System.out.println("----------------------");
		System.out.print("원하는 작업 선택 >> ");
	}
	
	public void searchmenu() {
		System.out.println();
		System.out.println("----------------------");
		System.out.println("  === 게 시 판 검 색 ===");
		System.out.println("  1. 제목 검색");
		System.out.println("  2. 작성자 검색");
		System.out.println("  3. 내용 검색");
		System.out.println("  4. 작업 끝.");
		System.out.println("----------------------");
		System.out.print("원하는 작업 선택 >> ");
	}

	/**
	 * 프로그램 시작메서드
	 */
	public void start() {
		int choice;
		do {
			displayMenu(); // 메뉴 출력
			choice = scan.nextInt(); // 메뉴번호 입력받기
			switch (choice) {
			case 1: // 게시판 작성
				insertBoard();
				break;
			case 2: // 게시판 삭제
				deleteBoard();
				break;
			case 3: // 게시판 수정
				updateBoard();
				break;
			case 4: // 게시판 정보 출력
				displayAllBoard();
				break;
			case 5: // 게시판 검색
				searchBoard();
				break;
			case 6: // 작업 끝
				System.out.println("작업을 마칩니다.");
				break;
			default:
				System.out.println("번호를 잘못 입력했습니다. 다시입력하세요");
			}
		} while (choice != 6);
	}

	
	/*
	 	게시판 검색을 위한 메서드
	 */
	public void searchBoard() {
		
	
		int choice;
		do {
			searchmenu(); // 메뉴 출력
			choice = scan.nextInt(); // 메뉴번호 입력받기
			switch (choice) {
			case 1: // 제목으로 검색
				searchTitle();
				break;
			case 2: // 작성자로 검색
				searchWriter();
				break;
			case 3: // 내용으로 검색
				searchContent();
				break;
			case 4: // 작업 끝
				System.out.println("작업을 마칩니다.");
				start();
				break;
			default:
				System.out.println("번호를 잘못 입력했습니다. 다시입력하세요");
			}
		} while (choice != 6);
		
	}
	
		private void searchContent() {
			System.out.println();
			System.out.println("검색할 게시판의 내용을 입력해주세요");
			System.out.println("게시판 내용 >> ");
			
			String boardcontent = scan.next();
			
			System.out.println();
			System.out.println("----------------------------------------------------------");
			System.out.println("No\t제목\t작성자\t내용\t\t작성일자");
			System.out.println("----------------------------------------------------------");
			
			try {
				conn = JDBCUtil.getConnection();

				String sql = "select * from jdbc_board where board_content like '%"+ boardcontent+"%'";
				
				stmt = conn.createStatement();
				stmt.executeQuery(sql);
				rs = stmt.executeQuery(sql);

				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-yy");
				while (rs.next()) {

					String boardNo = rs.getString("board_no");
					String boardTitle = rs.getString("board_title");
					String boardWriter = rs.getString("board_writer");
					String boardContent = rs.getString("board_content");
					Date regDt = rs.getTimestamp("board_date");

					System.out.println(boardNo  + "\t" + boardTitle + "\t" + boardWriter + "\t"+ boardContent + "\t\t"+ sdf.format(regDt));

				}
				
			} catch (SQLException ex) {

			} finally {
				JDBCUtil.close(conn, pstmt, stmt, rs);

			}
				System.out.println("----------------------------------------------");
				System.out.println("출력 작업 끝");		
	}

		private void searchWriter() {
			
			System.out.println();
			System.out.println("검색할 게시판의 작성자을 입력해주세요");
			System.out.println("게시판 작성자 >> ");
			
			String boardwriter = scan.next();
			
			System.out.println();
			System.out.println("----------------------------------------------------------");
			System.out.println("No\t제목\t작성자\t내용\t\t작성일자");
			System.out.println("----------------------------------------------------------");
			
			try {
				conn = JDBCUtil.getConnection();

				String sql = "select * from jdbc_board where board_writer like '%"+ boardwriter+"%'";
				
				stmt = conn.createStatement();
				stmt.executeQuery(sql);
				rs = stmt.executeQuery(sql);

				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-yy");
				while (rs.next()) {

					String boardNo = rs.getString("board_no");
					String boardTitle = rs.getString("board_title");
					String boardWriter = rs.getString("board_writer");
					String boardContent = rs.getString("board_content");
					Date regDt = rs.getTimestamp("board_date");

					System.out.println(boardNo  + "\t" + boardTitle + "\t" + boardWriter + "\t"+ boardContent + "\t\t"+ sdf.format(regDt));

				}
				
			} catch (SQLException ex) {

			} finally {
				JDBCUtil.close(conn, pstmt, stmt, rs);

			}
				System.out.println("----------------------------------------------");
				System.out.println("출력 작업 끝");		
	}

		private void searchTitle(){
			
		System.out.println();
		System.out.println("검색할 게시판의 제목을 입력해주세요");
		System.out.println("게시판 제목 >> ");
		
		String boardtitle = scan.next();
		
		System.out.println();
		System.out.println("----------------------------------------------------------");
		System.out.println("No\t제목\t작성자\t내용\t\t작성일자");
		System.out.println("----------------------------------------------------------");
		
		try {
			conn = JDBCUtil.getConnection();

			String sql = "select * from jdbc_board where board_title like '%"+ boardtitle+"%'";
			
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
			rs = stmt.executeQuery(sql);
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-yy");
			while (rs.next()) {

				String boardNo = rs.getString("board_no");
				String boardTitle = rs.getString("board_title");
				String boardWriter = rs.getString("board_writer");
				String boardContent = rs.getString("board_content");
				Date regDt = rs.getTimestamp("board_date");

				System.out.println(boardNo  + "\t" + boardTitle + "\t" + boardWriter + "\t"+ boardContent + "\t\t"+ sdf.format(regDt));

			}
			
		} catch (SQLException ex) {

		} finally {
			JDBCUtil.close(conn, pstmt, stmt, rs);

		}
			System.out.println("----------------------------------------------");
			System.out.println("출력 작업 끝");

		
		
		
	}

	/*
	 * 회원정보를 삭제하기 위한 메서드
	 */
	private void deleteBoard() {

		System.out.println();
		System.out.println("삭제할 게시판 번호를 입력하세요.");
		System.out.print("게시판 번호 >> ");

		String boardNo = scan.next();

		try {
			conn = JDBCUtil.getConnection();

			String sql = "delete from jdbc_board where board_no = ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardNo);
			pstmt.executeUpdate();

			int cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				System.out.println(boardNo + "게시판 삭제 작업 실패!");
			} else {
			System.out.println(boardNo + "게시판 삭제 작업 성공!!!");
			}

			System.out.println("게시판 삭제 작업 완료...");

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, stmt, rs);
		}

	}

	
	private void updateBoard() {

		boolean isExist = false;
		String boardNo = "";

		do {
			System.out.println();
			System.out.println("수정할 게시판 번호를 입력하세요.");
			System.out.print("게시판 번호 >> ");

			boardNo = scan.next();

			isExist = checkmember(boardNo);

			if (!isExist) {
				System.out.println("게시판번호가 " + boardNo + "인 정보는 존재하지 않습니다.");
				System.out.println("다시 입력해 주세요.");
			}
		} while (!isExist);

		System.out.print("제목 >> ");

		String boardTitle = scan.next();

		System.out.print("작성자 >> ");

		String boardWriter = scan.next();

		System.out.print("내용 >> ");

		scan.nextLine(); // 버퍼 비우기

		String boardContent = scan.nextLine();

		try {

			conn = JDBCUtil.getConnection();

			String sql = " UPDATE jdbc_board SET board_title = ?, board_writer =?, board_content =? WHERE board_no = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, boardTitle);
			pstmt.setString(2, boardWriter);
			pstmt.setString(3, boardContent);
			pstmt.setString(4, boardNo);

			int cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				System.out.println("게시판 수정 작업 성공!");
			} else {
				System.out.println("게시판 수정 작업 실패!!!");
			}
			System.out.println("게시판 수정 작업 완료...");
		} catch (SQLException ex) {

		} finally {
			JDBCUtil.close(conn, pstmt, stmt, rs);

		}

	}

	/*
	 * 모든 회원 정보를 출력하기 위한 메서드
	 */
	private void displayAllBoard() {

		System.out.println();
		System.out.println("----------------------------------------------------------");
		System.out.println("No\t제목\t작성자\t내용\t\t작성일자");
		System.out.println("----------------------------------------------------------");

		try {
			conn = JDBCUtil.getConnection();

			String sql = "select * from jdbc_board";
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
			rs = stmt.executeQuery(sql);

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-yy");
			while (rs.next()) {

				String boardNo = rs.getString("board_no");
				String boardTitle = rs.getString("board_title");
				String boardWriter = rs.getString("board_writer");
				String boardContent = rs.getString("board_content");
				Date regDt = rs.getTimestamp("board_date");

				System.out.println(boardNo  + "\t" + boardTitle + "\t" + boardWriter + "\t"+ boardContent + "\t\t"+ sdf.format(regDt));

			}

			System.out.println("----------------------------------------------");
			System.out.println("출력 작업 끝");

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, stmt, rs);
		}
	}

	/*
	 * 회원 정보를 등록하기 위한 메서드
	 */
	private void insertBoard() {

		boolean isExist = false;
		String boardNo = "";

//		do {
//			System.out.println();
//			System.out.println("추가할 회원 정보를 입력하세요.");
//			System.out.print("회원 ID >> ");
//
//			boardNo = scan.next();
//
//			isExist = checkmember(boardNo);
//
//			if (isExist) {
//				System.out.println("회원ID가 " + boardNo + "인 회원은 이미 존재합니다.");
//				System.out.println("다시 입력해 주세요.");
//			}
//		} while (isExist);

		System.out.print("제목 >> ");

		String boardTitle = scan.next();

		System.out.print("작성자 >> ");

		String boardWriter = scan.next();

		System.out.print("내용 >> ");


		String boardContent = scan.next();
		
		scan.nextLine();
		
		System.out.print("날짜 >> ");
		
		String boardDate = scan.nextLine();

		try {

			conn = JDBCUtil.getConnection();
			String sql = " insert into jdbc_board (board_no, board_title, board_writer, board_date, board_content) values(board_seq.nextVal, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardTitle);
			pstmt.setString(2, boardWriter);
			pstmt.setString(3, boardDate);
			pstmt.setString(4, boardContent);

			int cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				System.out.println("게시판 추가 작업 성공!");
			} else {
				System.out.println("게시판 추가 작업 실패!!!");
			}
			System.out.println("게시판 추가 작업 완료...");

		} catch (SQLException ex) {
			ex.printStackTrace();

		} finally {

			JDBCUtil.close(conn, pstmt, stmt, rs);
		}

	}

	/*
	 * 회원정보 존재유무 확인하기 위한 메서드 boardNo 확인할 회원ID 회원이 존재한다면 true, 존재하지 않으면 false 리턴함
	 */
	private boolean checkmember(String boardNo) {

		boolean isExist = false;

		try {
			conn = JDBCUtil.getConnection();
			String sql = "select count(*) as cnt from jdbc_board" + " where board_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardNo);
			rs = pstmt.executeQuery();

			int cnt = 0;
			while (rs.next()) {

				cnt = rs.getInt("CNT");

			}

			if (cnt > 0) {
				isExist = true;
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, stmt, rs);
		}

		return isExist;
	}

	public static void main(String[] args) {
		BoardMain boardObj = new BoardMain();
		boardObj.start();
	}
	
}
