package kr.or.ddit.comm.dao;

import java.util.List;

import kr.or.ddit.comm.vo.AtchFileVO;

public class AtchFileDaoImpl extends MyBatisDao implements IAtchFileDao{

	private static IAtchFileDao fileDao;
	
	private AtchFileDaoImpl() {
	}
	
	public static IAtchFileDao getInstance() {
		if(fileDao == null) {
			fileDao = new AtchFileDaoImpl();
		}
		return fileDao;
		
	}
	
	@Override
	public int insertAtchFile(AtchFileVO atchFileVO) {
		int cnt = 0;
		cnt = insert("atchfile.insertAtchFile", atchFileVO);
		return cnt;
	}

	@Override
	public int insertAtchFileDetail(AtchFileVO atchFileVO) {
		int cnt = 0;
		cnt = insert("atchfile.insertAtchFileDetail", atchFileVO);
		return cnt;
	}

	@Override
	public List<AtchFileVO> getAtchFileList(AtchFileVO atchFileVO) {
		List<AtchFileVO> atchFileList = selectList("atchfile.getAtchFileList",atchFileVO);
		
		return atchFileList;
	}

	@Override
	public AtchFileVO getAtchFileDetail(AtchFileVO atchFileVO) {
		AtchFileVO fileVO = selectOne("atchfile.getAtchFileDetail", atchFileVO);
		return fileVO;
	}

}
