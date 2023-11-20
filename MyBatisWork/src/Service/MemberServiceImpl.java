package Service;

import java.util.List;

import Dao.IMemberDao;
import Dao.MemberDaoImpl;
import VO.MemberVO;

public class MemberServiceImpl implements IMemberService{
	
	private IMemberDao memDao;
	
	private static IMemberService memService;
	
	public MemberServiceImpl() {
		
		memDao = MemberDaoImpl.getInstance();
		
	}
	
	public static IMemberService getInstance() {
		if(memService == null) {
			memService = new MemberServiceImpl();
		}
		return memService;
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
