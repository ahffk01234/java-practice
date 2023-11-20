package eagles.ticket.service;

import java.util.List;

import eagles.ticket.dao.IPayTicketDao;
import eagles.ticket.dao.PayTicketDaoImpl;
import eagles.ticket.vo.CouponVO;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.SeatVO;

public class PayTicketServiceImpl implements IPayTicketService{

	private IPayTicketDao payTicketDao;
	
	private static IPayTicketService payTicketService;
	
	private PayTicketServiceImpl() {
		payTicketDao = PayTicketDaoImpl.getInstance();
	}

	public static IPayTicketService getInstance() {
		if(payTicketService == null) {
			payTicketService = new PayTicketServiceImpl();
		}
		return payTicketService;
	}
	
	@Override
	public GameVO showGameInfo(String gameCd) {
		return payTicketDao.showGameInfo(gameCd);
	}

	@Override
	public List<GameVO> showGameAllInfo() {
		
		return payTicketDao.showGameAllInfo();
	}

	@Override
	public List<SeatVO> seatList(String gameCd) {
		
		return payTicketDao.seatList(gameCd);
	}

	@Override
	public List<CouponVO> coupon(String memId) {
		// TODO Auto-generated method stub
		return payTicketDao.coupon(memId);
	}

	
	
	
}
