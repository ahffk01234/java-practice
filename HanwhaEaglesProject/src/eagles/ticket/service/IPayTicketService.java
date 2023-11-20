package eagles.ticket.service;

import java.util.List;

import eagles.ticket.vo.CouponVO;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.SeatVO;

public interface IPayTicketService {

	public GameVO showGameInfo(String gameCd);
	
	public List<GameVO> showGameAllInfo();
	
	public List<SeatVO> seatList(String gameCd);
	
	public List<CouponVO> coupon (String memId);
}
