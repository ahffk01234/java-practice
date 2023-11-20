package eagles.games.dao;

import java.util.List;

import eagles.games.vo.GamesVO;

public interface IGameListDao {

	public GamesVO getGames(String gameCode);
	
	public List<GamesVO> getAllGames(String gameCode);
	
	public List<GamesVO> getGameCode(GamesVO gamesVO);
}
