package eagles.ticket.pay.service;

import java.util.List;

import eagles.ticket.pay.vo.TicketPayVO;

public interface ITicketPayService {
	
	// 예매내역
	public List<TicketPayVO> getAllGameList(String memId);
	
	// 환불내역
	public List<TicketPayVO> getAllPayCancelList(String memId);
	
	// 결제 후 ticket테이블에 insert를 도와줄 메서드
	public int insertTicket(TicketPayVO tv);
	
	public int updateTicketPay(TicketPayVO tp);
	
	public List<TicketPayVO> getAllPayTicket();
	
	public List<TicketPayVO> getAllCancelTicket();
	
}
