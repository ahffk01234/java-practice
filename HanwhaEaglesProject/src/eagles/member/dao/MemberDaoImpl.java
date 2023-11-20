package eagles.member.dao;

import java.sql.SQLException;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.comm.util.MyBatisUtil;
import eagles.member.vo.FindMemberVO;
import eagles.member.vo.MemberVO;

//public class MemberDaoImpl extends MyBatisDao implements IMemberDao {
public class MemberDaoImpl implements IMemberDao {

	private static IMemberDao memDao;

	private MemberDaoImpl() {
	}

	public static IMemberDao getInstance() {
		if (memDao == null) {
			memDao = new MemberDaoImpl();
		}
		return memDao;
	}

	// 회원가입
	@Override
	public int insertMember(MemberVO mv) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("member.insertMember", mv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	// 아이디 중복체크
	@Override
	public boolean checkMember(String memId) {

		boolean isExist = false;

		SqlSession session = MyBatisUtil.getInstance();
		try {
			int cnt = session.selectOne("member.checkMember", memId);

			if (cnt > 0) {
				isExist = true;
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return isExist;
	}

	// 닉네임 중복체크
	@Override
	public boolean checkNickName(String memNickname) {

		boolean isExist = false;

		SqlSession session = MyBatisUtil.getInstance();
		try {
			int cnt = session.selectOne("", memNickname);

			if (cnt > 0) {
				isExist = true;
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return isExist;
	}

	// 블랙리스트 회원 조회
	@Override
	public List<MemberVO> getBlackMember(Map<String,Object> map) {
		List<MemberVO> bkList = new ArrayList<MemberVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			bkList = session.selectList("member.getBlackMember", map);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return bkList;
	}
	
	// 블랙리스트 총 인원수
	@Override
	public int getBlackMemberTotal() {
		SqlSession session = MyBatisUtil.getInstance();
		int getTotal = 0;
		try {
			getTotal = session.selectOne("member.getBlackMemberTotal");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return getTotal;
	}

	// 모든 회원 조회
	@Override
	public List<MemberVO> getAllMember() {
		List<MemberVO> mbList = new ArrayList<MemberVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {

			mbList = session.selectList("");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return mbList;
	}

	// 회원정보 수정
	@Override
	public int updateMember(MemberVO mv) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("member.updateMember", mv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();

			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	// 회원 탈퇴
	@Override
	public int deleteMember(String memId) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("member.deleteMember", memId);
			session.commit();

		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	// 로그인 한 회원 정보
	@Override
	public MemberVO getMember(String memId) {

		SqlSession session = MyBatisUtil.getInstance();
		MemberVO mv = null;

		try {
			mv = session.selectOne("member.getMember", memId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return mv;
	}

	// 아이디 찾기
	@Override
	public MemberVO findIdMember(MemberVO mv) {
		SqlSession session = MyBatisUtil.getInstance();
		try {
			mv = session.selectOne("member.findId", mv);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return mv;
	}
	
	// 비밀번호 찾기
	@Override
	public FindMemberVO findPwMember(FindMemberVO mv) {
		SqlSession session = MyBatisUtil.getInstance();
		try {
			mv = session.selectOne("member.findPw", mv);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return mv;
	}
	
	// 로그인체크
	@Override
	public String loginChk(Map<String, Object> map){
		
		SqlSession session = MyBatisUtil.getInstance(true);
		String memId = "";
		
		try {
			memId = session.selectOne("member.loginChk", map);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return memId;
	}

	@Override
	public int updateBlack(String memBlack) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.update("member.updateBlack", memBlack);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();

			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int helloBlack(String memId) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.update("member.helloBlack", memId);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();

			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	
}

