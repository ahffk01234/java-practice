package eagles.news.service;

import java.util.List;
import java.util.Map;

import eagles.news.dao.ITeamBoardDao;
import eagles.news.dao.TeamBoardDaoImpl;
import eagles.news.vo.TeamBoardVO;

public class TeamBoardServiceImpl implements ITeamBoardService {

	private ITeamBoardDao tbDao;
	private static ITeamBoardService tbService;
	private TeamBoardServiceImpl() {
		tbDao = TeamBoardDaoImpl.getInstance();
	}
	
	public static ITeamBoardService getInstance() {
		if(tbService == null) {
			tbService = new TeamBoardServiceImpl();
		}
		return tbService;
	}
	
	@Override
	public TeamBoardVO getBoard(String teamboardCd) {
		return tbDao.getBoard(teamboardCd);
	}

	@Override
	public List<TeamBoardVO> getSearchBoard(TeamBoardVO tbv) {
		return tbDao.getSearchBoard(tbv);
	}

	@Override
	public List<TeamBoardVO> getAllBoard(Map<String,Object> map) {
		return tbDao.getAllBoard(map);
	}
	
	@Override
	public int getAllBoardTotal() {
		return tbDao.getAllBoardTotal();
	}

	@Override
	public int insertBoard(TeamBoardVO tbv) {
		return tbDao.insertBoard(tbv);
	}

	@Override
	public int updateBoard(TeamBoardVO tbv) {
		return tbDao.updateBoard(tbv);
	}

	@Override
	public int deleteBoard(String teamboardCd) {
		return tbDao.deleteBoard(teamboardCd);
	}



}
