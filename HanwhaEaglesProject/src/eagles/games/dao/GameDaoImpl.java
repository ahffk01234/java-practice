package eagles.games.dao;

import java.util.List;
import java.util.Map;

import eagles.games.vo.GamesVO;

public class GameDaoImpl extends MyBatisDao implements IGameListDao{

	private static IGameListDao gameListDao;
	
	
	private GameDaoImpl() {}
	
	
	public static IGameListDao getInstance() {
		if(gameListDao == null) {
			gameListDao = new GameDaoImpl();
		}
		return gameListDao;
	}
	
	@Override
	public GamesVO getGames(String gameCode) {
		GamesVO gm = selectOne("game.selectGame", gameCode);
		return gm;
	}

	@Override
	public List<GamesVO> getAllGames(String gameCode) {
		List<GamesVO> gamesList = selectList("game.getAllGame", gameCode);
		return gamesList;
	}

	public List<GamesVO> getGameCode(GamesVO gamesVO){
		List<GamesVO> gameList = selectOne("game.selectGame", gamesVO);
		return gameList;
	}
	

}
