package eagles.ticket.dao;

import java.util.List;

import eagles.ticket.vo.TicketVO;

public interface ITicketDao {

	/**
	 * TicketVo에 담긴 데이터를 DB에서 가져오기 위한 메서드
	 * @param ticketCd : DB에서 불러올 데이터 (티켓하나의 데이터이기 때문에 리스트x)를 담고 있는 VO객체
	 * @return : DB에서 불러올 객체를 가져옴
	 */
	public TicketVO showTicket(String ticketCd);
	
	List<TicketVO> showTicketAll(String memId);

	public int insertTicket(TicketVO tv);

	public TicketVO getTicketCd(String ticketSeat);
	
	public int updateTicket(TicketVO tv);

	public int deleteTicket(TicketVO tv);
}
