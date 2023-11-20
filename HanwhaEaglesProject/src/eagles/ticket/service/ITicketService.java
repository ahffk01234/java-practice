package eagles.ticket.service;

import java.util.List;

import eagles.ticket.vo.TicketVO;

public interface ITicketService {
	
	
	public List<TicketVO> showTicketAll(String memId);
	
	/**
	 * 티켓별로 티켓 인원 정보 출력을 위한 메서드
	 * @param ticketCd
	 * @return : 가져온 티켓 인원을 반환
	 */
	public TicketVO showTicket(String ticketCd);
	
	public int insertTicket(TicketVO tv);
	
	public TicketVO getTicketCd(String ticketSeat);
	
	public int modifyTicket(TicketVO tv);

	public int deleteTicket(TicketVO tv);

}
