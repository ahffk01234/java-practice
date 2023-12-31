package kr.or.ddit.basic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import kr.or.ddit.util.JDBCUtil3;

/*
	회원정보를 관리하는 프로그램을 작성하는데 
	아래의 메뉴를 모두 구현하시오. (CRUD기능 구현하기)
	(DB의 MYMEMBER테이블을 이용하여 작업한다.)
	
	* 자료 삭제는 회원ID를 입력 받아서 삭제한다.
	
	예시메뉴)
	----------------------
		== 작업 선택 ==
		1. 자료 입력			---> insert
		2. 자료 삭제			---> delete
		3. 자료 수정			---> update
		4. 전체 자료 출력	---> select
		5. 작업 끝.
	----------------------
	 
	   
// 회원관리 프로그램 테이블 생성 스크립트 
create table mymember(
    mem_id varchar2(8) not null,  -- 회원ID
    mem_name varchar2(100) not null, -- 이름
    mem_tel varchar2(50) not null, -- 전화번호
    mem_addr varchar2(128),    -- 주소
    reg_dt DATE DEFAULT sysdate, -- 등록일
    CONSTRAINT MYMEMBER_PK PRIMARY KEY (mem_id)
);

*/
public class T01MemberInfoTest {

	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private Scanner scan = new Scanner(System.in);
	
	private static final Logger SQL_LOGGER = 
			LogManager.getLogger("log4jexam.sql.Query");
	private static final Logger PARAM_LOGGER = 
			LogManager.getLogger("log4jexam.sql.Parameter");
	private static final Logger RESULT_LOGGER = 
			LogManager.getLogger(T01MemberInfoTest.class);
	
	
	/**
	 * 메뉴를 출력하는 메서드
	 */
	public void displayMenu() {
		System.out.println();
		System.out.println("----------------------");
		System.out.println("  === 작 업 선 택 ===");
		System.out.println("  1. 자료 입력");
		System.out.println("  2. 자료 삭제");
		System.out.println("  3. 자료 수정");
		System.out.println("  4. 전체 자료 출력");
		System.out.println("  5. 작업 끝.");
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
			case 1: // 자료 입력
				insertMember();
				break;
			case 2: // 자료 삭제
				deleteMember();
				break;
			case 3: // 자료 수정
				updateMember();
				break;
			case 4: // 전체 자료 출력
				displayAllMember();
				break;
			case 5: // 작업 끝
				System.out.println("작업을 마칩니다.");
				break;
			default:
				System.out.println("번호를 잘못 입력했습니다. 다시입력하세요");
			}
		} while (choice != 5);
	}

	/*
	 * 회원정보를 삭제하기 위한 메서드
	 */
	private void deleteMember() {

		System.out.println();
		System.out.println("삭제할 회원 정보를 입력하세요.");
		System.out.print("회원 ID >> ");

		String memId = scan.next();

		try {
			conn = JDBCUtil3.getConnection();

			String sql = "delete from mymember where mem_id = ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.executeUpdate();

			int cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				System.out.println(memId + "회원 삭제 작업 실패!");
			} else {
			System.out.println(memId + "회원 삭제 작업 성공!!!");
			}

			System.out.println("회원 삭제 작업 완료...");

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}

	}

	/*
	 
	 */
	private void updateMember() {

		boolean isExist = false;
		String memId = "";

		do {
			System.out.println();
			System.out.println("수정할 회원 정보를 입력하세요.");
			System.out.print("회원 ID >> ");

			memId = scan.next();

			isExist = checkmember(memId);

			if (!isExist) {
				System.out.println("회원ID가 " + memId + "인 회원은 존재하지 않습니다.");
				System.out.println("다시 입력해 주세요.");
			}
		} while (!isExist);

		System.out.print("회원 이름 >> ");

		String memName = scan.next();

		System.out.print("회원 전화번호 >> ");

		String memTel = scan.next();

		System.out.print("회원 주소 >> ");

		scan.nextLine(); // 버퍼 비우기

		String memAddr = scan.nextLine();

		try {

			conn = JDBCUtil3.getConnection();

			String sql = " UPDATE mymember " + " SET " + " mem_name = ? " + " ,mem_tel = ? " + " ,mem_addr =? "
					+ " WHERE " + " mem_id = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, memName);
			pstmt.setString(2, memTel);
			pstmt.setString(3, memAddr);
			pstmt.setString(4, memId);

			int cnt = pstmt.executeUpdate();

			if (cnt > 0) {
				System.out.println(memId + "회원 수정 작업 성공!");
			} else {
				System.out.println(memId + "회원 수정 작업 실패!!!");
			}
			System.out.println("회원 수정 작업 완료...");
		} catch (SQLException ex) {

		} finally {
			JDBCUtil3.close(conn, pstmt, stmt, rs);

		}

	}

	/*
	 * 모든 회원 정보를 출력하기 위한 메서드
	 */
	private void displayAllMember() {

		System.out.println();
		System.out.println("----------------------------------------------------------");
		System.out.println("ID\t생성일\t\t이 름\t전화번호\t\t주 소");
		System.out.println("----------------------------------------------------------");

		try {
			conn = JDBCUtil3.getConnection();

			String sql = "select * from mymember";
			stmt = conn.createStatement();
			stmt.executeQuery(sql);
			rs = stmt.executeQuery(sql);

			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-yy");
			while (rs.next()) {

				String memId = rs.getString("mem_id");
				String memName = rs.getString("mem_name");
				String memTel = rs.getString("mem_tel");
				String memAddr = rs.getString("mem_addr");
				Date regDt = rs.getTimestamp("REG_DT");

				System.out.println(memId + "\t" + sdf.format(regDt) + "\t" + memName + "\t" + memTel + "\t\t" + memAddr);

			}

			System.out.println("----------------------------------------------");
			System.out.println("출력 작업 끝");

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}
	}

	/*
	 * 회원 정보를 등록하기 위한 메서드
	 */
	private void insertMember() {

		boolean isExist = false;
		String memId = "";

		do {
			System.out.println();
			System.out.println("추가할 회원 정보를 입력하세요.");
			System.out.print("회원 ID >> ");

			memId = scan.next();

			isExist = checkmember(memId);

			if (isExist) {
				System.out.println("회원ID가 " + memId + "인 회원은 이미 존재합니다.");
				System.out.println("다시 입력해 주세요.");
			}
		} while (isExist);

		System.out.print("회원 이름 >> ");

		String memName = scan.next();

		System.out.print("회원 전화번호 >> ");

		String memTel = scan.next();

		System.out.print("회원 주소 >> ");

		scan.nextLine(); // 버퍼 비우기

		String memAddr = scan.nextLine();

		try {

			conn = JDBCUtil3.getConnection();
			String sql = " insert into mymember " + " (mem_id, mem_name, mem_tel, mem_addr) " + "  values(?, ?, ?, ?)";

			SQL_LOGGER.debug("쿼리문 : " + sql);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.setString(2, memName);
			pstmt.setString(3, memTel);
			pstmt.setString(4, memAddr);
			
			PARAM_LOGGER.debug("파라미터 정보 : (" 
								+ memId + "," 
								+ memName + "," 
								+ memTel + ","
								+ memAddr + ")"
								);

			int cnt = pstmt.executeUpdate();

			RESULT_LOGGER.info("실행결과 : " + cnt);
			
			if (cnt > 0) {
				System.out.println(memId + "회원 추가 작업 성공!");
			} else {
				System.out.println(memId + "회원 추가 작업 실패!!!");
			}
			System.out.println("회원 추가 작업 완료...");

		} catch (SQLException ex) {
			ex.printStackTrace();

		} finally {

			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}

	}

	/*
	 * 회원정보 존재유무 확인하기 위한 메서드 memId 확인할 회원ID 회원이 존재한다면 true, 존재하지 않으면 false 리턴함
	 */
	private boolean checkmember(String memId) {

		boolean isExist = false;

		try {
			conn = JDBCUtil3.getConnection();
			String sql = "select count(*) as cnt from mymember" + " where mem_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
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
			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}

		return isExist;
	}

	public static void main(String[] args) {
		T01MemberInfoTest memObj = new T01MemberInfoTest();
		memObj.start();
	}

}
