package eagles.ticket.dao;

import java.util.ArrayList;
import java.util.List;

import eagles.ticket.vo.TicketVO;

public class TicketDaoImpl extends MyBatisDao implements ITicketDao {
	
	private static ITicketDao ticketDao;
	
	private TicketDaoImpl() {}
	
	public static ITicketDao getInstance() {
		if(ticketDao == null) {
			ticketDao = new TicketDaoImpl();
		}
		return ticketDao;
	}
	
	@Override
	public List<TicketVO> showTicketAll(String memId){
		
		List<TicketVO> ticketList = new ArrayList<TicketVO>();
		
		ticketList = selectList("ticket.showTicketAll", memId);
		
		return ticketList;
	}
	
	@Override
	public TicketVO showTicket(String ticketCd) {
		
		TicketVO tv = selectOne("ticket.showTicket", ticketCd);
		
		return tv;
	}

	@Override
	public int insertTicket(TicketVO tv) {
		int cnt = insert("pay.insertTicket", tv);
		return cnt;
	}

	@Override
	public TicketVO getTicketCd(String ticketSeat) {
		TicketVO tv = selectOne("ticket.getTicketCd", ticketSeat);
		return tv;
	}

	@Override
	public int updateTicket(TicketVO tv) {
		int cnt = update("pay.updateTicket", tv);
		return cnt;
	}

	@Override
	public int deleteTicket(TicketVO tv) {
		int cnt = delete("ticket.deleteTicket", tv);
		return cnt;
	}
	
}
