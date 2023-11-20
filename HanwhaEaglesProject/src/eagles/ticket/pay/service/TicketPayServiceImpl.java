package eagles.ticket.pay.service;

import java.util.List;

import eagles.ticket.pay.dao.ITicketPayDao;
import eagles.ticket.pay.dao.TicketPayDaoImpl;
import eagles.ticket.pay.vo.TicketPayVO;

public class TicketPayServiceImpl implements ITicketPayService{
	
	private ITicketPayDao ticketpayDao;
	
	private static ITicketPayService ticketpayService;
	
	public TicketPayServiceImpl() {
		ticketpayDao = TicketPayDaoImpl.getInstance();
		
	}
	
	public static ITicketPayService getInstance() {
		if(ticketpayService == null) {
			ticketpayService = new TicketPayServiceImpl();
		}
		return ticketpayService;
	}

	@Override
	public List<TicketPayVO> getAllGameList(String memId) {
		return ticketpayDao.showTicketAllPay(memId);
	}

	// 좌석 및 수량 선택 후 insert
	@Override
	public int insertTicket(TicketPayVO tv) {
		return ticketpayDao.insertTicketPay(tv);
	}

	@Override
	public int updateTicketPay(TicketPayVO tp) {
		return ticketpayDao.updateTicketPay(tp);
	}

	@Override
	public List<TicketPayVO> getAllPayCancelList(String memId) {
		return ticketpayDao.getAllPayCancelList(memId);
	}

	@Override
	public List<TicketPayVO> getAllPayTicket() {
		return ticketpayDao.getAllPayticket();
	}

	@Override
	public List<TicketPayVO> getAllCancelTicket() {
		return ticketpayDao.getAllCancelTicket();
	}


}
