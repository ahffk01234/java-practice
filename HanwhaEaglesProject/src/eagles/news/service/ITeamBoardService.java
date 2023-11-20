package eagles.news.service;

import java.util.List;
import java.util.Map;

import eagles.news.vo.TeamBoardVO;

public interface ITeamBoardService {

	public TeamBoardVO getBoard(String teamboardCd);

	public List<TeamBoardVO> getSearchBoard(TeamBoardVO tbv);

	public List<TeamBoardVO> getAllBoard(Map<String,Object> map);

	public int insertBoard(TeamBoardVO tbv);

	public int updateBoard(TeamBoardVO tbv);

	public int deleteBoard(String teamboardCd);
	
	public int getAllBoardTotal();

}
