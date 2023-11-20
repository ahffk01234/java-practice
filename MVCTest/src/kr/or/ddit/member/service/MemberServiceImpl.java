package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.dao.MemberDaoImplForJDBC;
import kr.or.ddit.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService{
	
	private MemberDaoImplForJDBC memDao;
	
	public MemberServiceImpl() {
		
//		memDao = new Memberd();
		
	}
	
	
	@Override
	public int registerMember(MemberVO mv) {
		
		return memDao.insertMember(mv);
	}

	@Override
	public boolean checkMember(String memId) {
		
		return memDao.checkMember(memId);
	}

	@Override
	public List<MemberVO> getAllMember() {
		
		return memDao.getAllMember();
	}

	@Override
	public int modifyMember(MemberVO mv) {
		
		return memDao.updateMember(mv);
	}

	@Override
	public int removeMember(String memId) {
		
		return memDao.deleteMember(memId);
	}


	@Override
	public List<MemberVO> searchMember(MemberVO mv) {
		
		return memDao.searchMember(mv);
	}

}
