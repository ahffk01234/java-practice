package eagles.news.dao;

import java.util.List;
import java.util.Map;

import eagles.news.vo.TeamBoardVO;

public interface ITeamBoardDao {

	/**
	 * 해당 게시물 열람
	 * @param teamboardCd
	 * @return
	 */
	public TeamBoardVO getBoard(String teamboardCd);
	
	/**
	 * 해당 게시물 조회
	 * @param tbv
	 * @return
	 */
	public List<TeamBoardVO> getSearchBoard(TeamBoardVO tbv);
	
	/**
	 * 전체 게시물 조회
	 * @return
	 */
	public List<TeamBoardVO> getAllBoard(Map<String,Object> map);
	
	public int getAllBoardTotal();
	
	/**
	 * 게시물 등록
	 * @return
	 */
	public int insertBoard(TeamBoardVO tbv);
	
	/**
	 * 게시물 수정
	 * @param tbv
	 * @return
	 */
	public int updateBoard(TeamBoardVO tbv);
	
	/**
	 * 게시물 삭제
	 * @param tbv
	 * @return
	 */
	public int deleteBoard(String teamboardCd);
}
