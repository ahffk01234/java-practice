package eagles.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.seat.service.ISeatService;
import eagles.seat.service.SeatServiceImpl;
import eagles.seat.vo.SeatVO;
import eagles.ticket.pay.service.ITicketPayService;
import eagles.ticket.pay.service.TicketPayServiceImpl;
import eagles.ticket.pay.vo.TicketPayVO;
import eagles.ticket.service.ITicketService;
import eagles.ticket.service.TicketServiceImpl;
import eagles.ticket.vo.TicketVO;

// 티켓 예매 내역에서 결제취소 기능을 구현할 서블릿
@WebServlet("/deleteTicket.do")
public class deleteTicketController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		HttpSession session = req.getSession();
//		String ticketCd = (String)session.getAttribute("ticketCd");
//		System.out.println("티켓 코드 : " + ticketCd);
		
		
		String ticketCd = req.getParameter("ticketCd");
		String ticketPayCd = req.getParameter("ticketPayCd");
		
		System.out.println("티켓 코드 : " + ticketCd);
		System.out.println("결제 코드 : " + ticketPayCd);
		
		// ticket_pay 테이블에서 데이터 삭제를 수행할 메서드
		ITicketPayService ticketPayService = TicketPayServiceImpl.getInstance();
		TicketPayVO tp = new TicketPayVO(ticketCd);
		
		int cnt = ticketPayService.updateTicketPay(tp);
		
		if(cnt > 0) {
			
			System.out.println("결제내역 삭제 성공!!!");
			System.out.println("ticket 테이블과 seat 테이블에서 데이터 삭제중...");
			
//			ITicketService ticketService = TicketServiceImpl.getInstance();
			ISeatService seatService = SeatServiceImpl.getInstance();
			
			SeatVO sv = new SeatVO(ticketCd);
			int cnt2 = seatService.deleteSeat(sv);
			
//			TicketVO tv = new TicketVO(ticketCd);
//			int cnt1 = ticketService.deleteTicket(tv);
			
			if(cnt2 > 0 ) {
				System.out.println("전체 삭제 성공!!!");
				
			}else {
				System.out.println("삭제 실패!!!");
			}
			
			
			
		}else {
			System.out.println("결제내역 삭제 실패!!!");
			
		}
		
		resp.sendRedirect("/myticketPay.do");
	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}
}
