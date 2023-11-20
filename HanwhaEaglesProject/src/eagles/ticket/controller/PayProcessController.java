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
import eagles.ticket.pay.service.ITicketPayService;
import eagles.ticket.pay.service.TicketPayServiceImpl;
import eagles.ticket.pay.vo.TicketPayVO;
import eagles.ticket.service.IPayTicketService;
import eagles.ticket.service.ITicketService;
import eagles.ticket.service.PayTicketServiceImpl;
import eagles.ticket.service.TicketServiceImpl;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.TicketVO;


@WebServlet(value ="/ticketpay/process.do")
public class PayProcessController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//adultCount=1&youthCount=0&childCount=0&totalAmount=16000
		System.out.println("결제 프로세스 메서드 도착 => 알러트창 떠야함");
		
		//
		String adult = req.getParameter("adultCount");
		String student = req.getParameter("youthCount");
		String child = req.getParameter("childCount");
		int totalamount = Integer.valueOf( req.getParameter("totalAmount"));
		
		
		System.out.println("어른 : " + adult);
		System.out.println("청소년 : " + student);
		System.out.println("어린이 : " + child);
		System.out.println("총액 : " + totalamount);
		
		HttpSession session = req.getSession();

		String ticketCd = (String)session.getAttribute("ticketCd");
		String memId = (String) session.getAttribute("LogMemId");
		String ticketSeat = (String)session.getAttribute("ticketSeat");
		
		System.out.println("Id : " + memId + ", ticketseat : " + ticketSeat + ", ticketCd : " + ticketCd);
		
		ISeatService seatService = SeatServiceImpl.getInstance();
		ITicketService ticketService = TicketServiceImpl.getInstance();
		
		TicketVO tv = new TicketVO(adult, student, child, ticketSeat);

		
		int cnt = ticketService.modifyTicket(tv);
		System.out.println("ticket 테이블에 insert 성공여부 : " + cnt);
		
		if(cnt > 0 ) {
			System.out.println("성공!");
			session.getAttribute("ticketSeat");
			
			String[] ticket= ticketSeat.split("/");
			
			for(int i = 0 ; i < ticket.length;i++) {
				
				System.out.println(ticket[i]);
				int cntSeat = seatService.chgRes(ticket[i].trim());
				
				if(cntSeat > 0 ) {
					System.out.println("seat upate 성공!!!");
				}
			}
			ITicketPayService ticketpayService = TicketPayServiceImpl.getInstance();
			///////////////////////////////////////////////////////////////////////////

			// ticket_pay 테이블에 insert 할 객체 생성
			TicketPayVO tp = new TicketPayVO(totalamount, ticketCd);

			int cnt1 = ticketpayService.insertTicket(tp);
			
			if(cnt1 > 0 ) {
				
				System.out.println("ticket_pay 테이블 insert 성공 여부 : " + cnt1);
				
				// 전달 경로
				RequestDispatcher rd = req.getRequestDispatcher("/views/ticketviews/ticketpayprocess.jsp");
				rd.forward(req, resp);
			}
		}else {
			System.out.println("실패");
//			resp.sendRedirect("/");

		}

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
