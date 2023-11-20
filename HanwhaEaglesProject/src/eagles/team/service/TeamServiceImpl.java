package eagles.team.service;

import java.util.List;

import eagles.team.dao.ITeamDao;
import eagles.team.dao.TeamDaoImpl;
import eagles.team.vo.TeamVO;

public class TeamServiceImpl implements ITeamService{

	private ITeamDao teamDao;
	
	private static ITeamService teamService;
	
	private TeamServiceImpl() {
		teamDao = TeamDaoImpl.getInstance();
	}
	
	public static ITeamService getInstance() {
		if(teamService == null) {
			teamService = new TeamServiceImpl();
		}
		
		return teamService;
	}
	
	@Override
	public List<TeamVO> getTeamListAll(String teamCode) {
		return teamDao.getTeamAll(teamCode);
	}

	@Override
	public TeamVO getTeamList(String teamCode) {
		return teamDao.getTeam(teamCode);
	}
}
