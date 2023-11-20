package eagles.games.service;

import java.util.List;

import eagles.games.dao.GameDaoImpl;
import eagles.games.dao.IGameListDao;
import eagles.games.vo.GamesVO;
import eagles.ticket.vo.TicketVO;

public class GameListServiceImpl implements IGameListService{
	
	private IGameListDao gameListDao;
	private static IGameListService gameListservice;
	
	public GameListServiceImpl() {
		gameListDao = GameDaoImpl.getInstance();
		
	}
	
	public static IGameListService getInstance() {
		if(gameListservice == null) {
			gameListservice = new GameListServiceImpl();
		}
		return gameListservice;
	}
	

	@Override
	public GamesVO getGameList(String gameCode) {
		return gameListDao.getGames(gameCode); // 경기 하나를 골랐을 때 정보
	}

	@Override
	public List<GamesVO> getAllGameList(String gameCode) {
		return gameListDao.getAllGames(gameCode); // DB에서 가져온 모든 경기 정보
	}

	@Override
	public int insertTicket(TicketVO tk) {
		return 0;
	}
	public List<GamesVO> getGameCode(GamesVO gamesVO) {
		return gameListDao.getGameCode(gamesVO);
	}
}
