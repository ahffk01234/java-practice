package kr.or.ddit.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.member.vo.MemberVO;
import kr.or.ddit.util.JDBCUtil3;

public class MemberDaoImpl implements IMemberDaoForJDBC{
	
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	@Override
	public int insertMember(MemberVO mv) {
		int cnt = 0;
		try {

			conn = JDBCUtil3.getConnection();
			String sql = " insert into mymember " + " (mem_id, mem_name, mem_tel, mem_addr) " + "  values(?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mv.getMemId());
			pstmt.setString(2, mv.getMemName());
			pstmt.setString(3, mv.getMemTel());
			pstmt.setString(4, mv.getMemAddr());

			cnt = pstmt.executeUpdate();


		} catch (SQLException ex) {
			ex.printStackTrace();

		} finally {

			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}
		
		return cnt;
	}

	@Override
	public boolean checkMember(String memId) {
		
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

	@Override
	public List<MemberVO> getAllMember() {
		
		List<MemberVO> memList = new ArrayList<MemberVO>();
		
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
				
				MemberVO mv = new MemberVO(memId, memName, memTel, memAddr);
				mv.setRegDt(regDt);
				
				
			}

			System.out.println("----------------------------------------------");
			System.out.println("출력 작업 끝");

		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			JDBCUtil3.close(conn, pstmt, stmt, rs);
		}
		return memList;
	}

	@Override
	public int updateMember(MemberVO mv) {
		
		int cnt = 0;
		
		try {
			
			conn = JDBCUtil3.getConnection();

			String sql = " UPDATE mymember " + " SET " + " mem_name = ? " + " ,mem_tel = ? " + " ,mem_addr =? "
					+ " WHERE " + " mem_id = ? ";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mv.getMemName());
			pstmt.setString(2, mv.getMemName());
			pstmt.setString(3, mv.getMemTel());
			pstmt.setString(4, mv.getMemAddr());

			cnt = pstmt.executeUpdate();

		} catch (SQLException ex) {

		} finally {
			JDBCUtil3.close(conn, pstmt, stmt, rs);

		}
		return cnt;
	}

	@Override
	public int deleteMember(String memId) {
		
		int cnt = 0;
		
		try {
			conn = JDBCUtil3.getConnection();

			String sql = "delete from mymember where mem_id = ? ";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			pstmt.executeUpdate();

			cnt = pstmt.executeUpdate();

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
		return cnt;
	}

	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		List<MemberVO> memList = new ArrayList<MemberVO>();
		try {
			conn = JDBCUtil3.getConnection();
			String sql = "select * from mymember where 1 = 1 ";
			if(mv.getMemId() != null && !mv.getMemId().contentEquals("")) {
				sql += " and mem_id = ? ";
			}
			if(mv.getMemName() != null && !mv.getMemName().contentEquals("")) {
				sql += " and mem_name = ? ";
			}
			if(mv.getMemTel() != null && !mv.getMemTel().contentEquals("")) {
				sql += " and mem_tel = ? ";
			}
			if(mv.getMemAddr() != null && !mv.getMemAddr().contentEquals("")) {
				sql += " and mem_addr like '%' || ? || '%' ";
			}
		
			
			pstmt = conn.prepareStatement(sql);
			
			int index = 1; // 와일드카드 위치..
			
			if(mv.getMemId() != null && !mv.getMemId().contentEquals("")) {
				pstmt.setString(index++, mv.getMemId());
			}
			if(mv.getMemName() != null && !mv.getMemName().contentEquals("")) {
				pstmt.setString(index++, mv.getMemName());
			}
			if(mv.getMemTel() != null && !mv.getMemTel().contentEquals("")) {
				pstmt.setString(index++, mv.getMemTel());
			}
			if(mv.getMemAddr() != null && !mv.getMemAddr().contentEquals("")) {
				pstmt.setString(index++, mv.getMemAddr());
			}
			
			rs = pstmt.executeQuery();
			
			while (rs.next()) {

				String memId = rs.getString("mem_id");
				String memName = rs.getString("mem_name");
				String memTel = rs.getString("mem_tel");
				String memAddr = rs.getString("mem_addr");
				Date regDt = rs.getTimestamp("REG_DT");
				
				MemberVO mv2 = new MemberVO(memId, memName, memTel, memAddr);
				mv2.setRegDt(regDt);
				
				memList.add(mv2);
				
			}

			System.out.println("----------------------------------------------");
			System.out.println("출력 작업 끝");

			
		}catch(SQLException ex) {
			ex.printStackTrace();
		}finally {
			JDBCUtil3.close(conn, pstmt, pstmt, rs);
		}
		return memList;
	}

}
