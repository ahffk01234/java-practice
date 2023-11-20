package eagles.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import eagles.member.dao.IMemberDao;
import eagles.member.dao.MemberDaoImpl;
import eagles.member.vo.FindMemberVO;
import eagles.member.vo.MemberVO;

public class MemberServiceImpl implements IMemberService{

	private IMemberDao memDao;
	private static IMemberService memService;
	private MemberServiceImpl() {
		memDao = MemberDaoImpl.getInstance();
	}
	
	public static IMemberService getInstance() {
		if(memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
	}
	
	@Override
	public int insertMember(MemberVO mv) {
		return memDao.insertMember(mv);
	}

	@Override
	public boolean checkMember(String memId) {
		return memDao.checkMember(memId);
	}

	@Override
	public boolean checkNickName(String memNickname) {
		return memDao.checkNickName(memNickname);
	}

	@Override
	public List<MemberVO> getBlackMember(Map<String,Object> map) {
		return memDao.getBlackMember(map);
	}

	//블랙리스트 전체 인원수
	@Override
	public int getBlackMemberTotal() {
		return memDao.getBlackMemberTotal();
	}
	
	
	
	@Override
	public List<MemberVO> getAllMember() {
		return memDao.getAllMember();
	}

	@Override
	public int updateMember(MemberVO mv) {
		return memDao.updateMember(mv);
	}

	@Override
	public int deleteMember(String memId) {
		return memDao.deleteMember(memId);
	}

	@Override
	public MemberVO getMember(String memId) {
		return memDao.getMember(memId);
	}

	@Override
	public MemberVO findIdMember(MemberVO mv) {
		return memDao.findIdMember(mv);
	}
	
	@Override
	public FindMemberVO findPwMember(FindMemberVO mv) {
		return memDao.findPwMember(mv);
	}
	
	@Override
	public String loginChk(Map<String, Object> map) {

		String memId = "";
		try {
			memId = memDao.loginChk(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return memId;
	}

	@Override
	public int updateBlack(String memBlack) {
		return memDao.updateBlack(memBlack);
	}

	@Override
	public int helloBlack(String memId) {
		return memDao.helloBlack(memId);
	}

}
