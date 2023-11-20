package eagles.ticket.pay.dao;

import java.util.List;

import eagles.ticket.pay.vo.TicketPayVO;

public class TicketPayDaoImpl extends MyBatisDao implements ITicketPayDao{

	private static ITicketPayDao ticketpayDao;
	
	private TicketPayDaoImpl() {}
	
	public static ITicketPayDao getInstance() {
		if(ticketpayDao == null) {
			ticketpayDao = new TicketPayDaoImpl();
		}
		return ticketpayDao;
	}

	@Override
	public List<TicketPayVO> showTicketAllPay(String memId) {
		List<TicketPayVO> payList = selectList("pay.myAllpay", memId);
		return payList;
	}

	@Override
	public int insertTicketPay(TicketPayVO tv) {
		int cnt = insert("pay.insertTicketPay", tv);
		return cnt;
	}

	@Override
	public int updateTicketPay(TicketPayVO tp) {
		int cnt = update("pay.updateTicketPay", tp);
		return cnt;
	}

	
	// 환불내역 리스트
	@Override
	public List<TicketPayVO> getAllPayCancelList(String memId) {
		List<TicketPayVO> payCancelList = selectList("pay.myAllCancelPay", memId);
		return payCancelList;
	}

	@Override
	public List<TicketPayVO> getAllPayticket() {
		List<TicketPayVO> payticketList = selectList("pay.AllTicketPay");
		return payticketList;
	}

	@Override
	public List<TicketPayVO> getAllCancelTicket() {
		List<TicketPayVO> payCancelAllList = selectList("pay.AllCancelPay");
		return payCancelAllList;
	}
	

}
