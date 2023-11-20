package eagles.games.service;

import java.util.List;

import eagles.games.vo.GamesVO;
import eagles.ticket.vo.TicketVO;

public interface IGameListService {
	
	public GamesVO getGameList(String gameCode); // 특정 경기에 대한 정보
	
	public List<GamesVO> getAllGameList(String gameCode); // 전체 경기 일정
	public List<GamesVO> getGameCode(GamesVO gamesVO);

	// 경기코드에 대해 선택된 좌석과 수량 정보를 ticket 테이블에 insert할 객체
	public int insertTicket(TicketVO tk);  
}
