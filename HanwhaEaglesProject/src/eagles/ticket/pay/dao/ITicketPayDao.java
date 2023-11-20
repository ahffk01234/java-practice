package eagles.ticket.pay.dao;

import java.util.List;

import eagles.ticket.pay.vo.TicketPayVO;

public interface ITicketPayDao {
	
	// 마이페이지에서 출력할 ticket_pay 테이블의 데이터
	List<TicketPayVO> showTicketAllPay(String memId);

	public int insertTicketPay(TicketPayVO tv);

	public int updateTicketPay(TicketPayVO tp);

	// 환불내역
	List<TicketPayVO> getAllPayCancelList(String memId);

	List<TicketPayVO> getAllPayticket();

	List<TicketPayVO> getAllCancelTicket();
}
