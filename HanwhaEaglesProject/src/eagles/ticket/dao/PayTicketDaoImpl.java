package eagles.ticket.dao;

import java.util.List;

import eagles.ticket.vo.CouponVO;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.SeatVO;

public class PayTicketDaoImpl extends MyBatisDao implements IPayTicketDao{

	private static IPayTicketDao payTicketDao;
	
	private PayTicketDaoImpl() {
		
	}
	
	public static IPayTicketDao getInstance() {
		if(payTicketDao == null) {
			payTicketDao = new PayTicketDaoImpl();
		}
		return payTicketDao;
	}
	
	@Override
	public GameVO showGameInfo(String gameCd) {

		GameVO gv = selectOne("payticket.showGameInfo", gameCd);
		
		return gv;
	}

	@Override
	public List<GameVO> showGameAllInfo() {
		List<GameVO> gameAllList = selectList("payticket.showGameAllInfo");
		return gameAllList;
	}

	@Override
	public List<SeatVO> seatList(String gameCd) {
		List<SeatVO> seatList = selectList("payticket.seatList", gameCd);
		return seatList;
	}

	@Override
	public List<CouponVO> coupon(String memId) {
		List<CouponVO> coupon = selectList("payticket.coupon", memId);
		return coupon;
	}

}
