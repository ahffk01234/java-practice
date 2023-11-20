package eagles.team.dao;

import java.util.List;

import eagles.team.vo.TeamVO;

public class TeamDaoImpl extends MyBatisDao implements ITeamDao{
	private static ITeamDao teamDao;
	
	private TeamDaoImpl() {}
	
	public static ITeamDao getInstance() {
		if(teamDao == null) {
			teamDao = new TeamDaoImpl();
		}
		return teamDao;
	}

	@Override
	public TeamVO getTeam(String teamCode) {
		TeamVO teamVO = selectOne("team.getTeam",teamCode);
		return teamVO;
	}

	@Override
	public List<TeamVO> getTeamAll(String teamCode) {
		List<TeamVO> teamList = selectList("team.getAllTeam", teamCode);
		return teamList;
	}
	

}
