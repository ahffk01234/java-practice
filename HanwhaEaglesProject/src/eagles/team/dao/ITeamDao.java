package eagles.team.dao;

import java.util.List;

import eagles.team.vo.TeamVO;

public interface ITeamDao {
	
	public TeamVO getTeam(String teamCode);
	
	public List<TeamVO> getTeamAll(String teamCode);
}
