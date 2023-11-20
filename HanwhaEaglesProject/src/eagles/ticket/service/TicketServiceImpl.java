package eagles.ticket.service;

import java.util.List;

import eagles.ticket.dao.ITicketDao;
import eagles.ticket.dao.TicketDaoImpl;
import eagles.ticket.vo.TicketVO;

public class TicketServiceImpl implements ITicketService {
	
	private ITicketDao ticketDao;
	
	private static ITicketService ticketService;
	
	private TicketServiceImpl() {
		ticketDao = TicketDaoImpl.getInstance();
	}
	
	public static ITicketService getInstance() {
		if(ticketService == null) {
			ticketService = new TicketServiceImpl();
		}
		return ticketService;
	}

	@Override
	public List<TicketVO> showTicketAll(String memId) {
		return ticketDao.showTicketAll(memId);
	}

	@Override
	public TicketVO showTicket(String ticketCd) {
		return null;
	}

	@Override
	public int insertTicket(TicketVO tv) {
		return ticketDao.insertTicket(tv);
	}

	@Override
	public TicketVO getTicketCd(String ticketSeat) {
		return ticketDao.getTicketCd(ticketSeat);
	}

	@Override
	public int modifyTicket(TicketVO tv) {
		return ticketDao.updateTicket(tv);
	}

	@Override
	public int deleteTicket(TicketVO tv) {
		return ticketDao.deleteTicket(tv);
	}
	
}
