package eagles.team.service;

import java.util.List;

import eagles.team.vo.TeamVO;

public interface ITeamService {
	
	public List<TeamVO> getTeamListAll(String teamCode);
	
	public TeamVO getTeamList(String teamCode);
	
}
