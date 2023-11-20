package eagles.ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.ticket.service.IPayTicketService;
import eagles.ticket.service.ITicketService;
import eagles.ticket.service.PayTicketServiceImpl;
import eagles.ticket.service.TicketServiceImpl;
import eagles.ticket.vo.CouponVO;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.TicketVO;

@WebServlet(value="/ticketpay.do")
public class TicketPay extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		String gameCd = req.getParameter("gameCd");
		String ticketSeat = (String)session.getAttribute("ticketSeat");
		String memId = (String) session.getAttribute("LogMemId");
		
		System.out.println("ticketSeat : " + ticketSeat);
		
//		String ticketCd = req.getParameter("ticketCd");
		String ticketCd = (String)session.getAttribute("ticketCd");
		
		System.out.println("티켓 코드 : " + ticketCd);
		System.out.println("789게임코드 파라미터 : " + gameCd);
		
		req.setAttribute("gameCd", gameCd);
		
		IPayTicketService payTicketService = PayTicketServiceImpl.getInstance();

		GameVO gv = payTicketService.showGameInfo(gameCd);
//		System.out.println(gv.getGameCd());
		
		req.setAttribute("gv", gv);
		req.setAttribute("gameCd", gameCd);
		
		List<CouponVO> couponList = payTicketService.coupon(memId);
		
		req.setAttribute("couponList", couponList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ticketviews/ticketpay.jsp");
		rd.forward(req, resp);
	
		
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String ticketCd = (String)req.getAttribute("ticketCd");
//		
//		System.out.println("티켓코드 : " + ticketCd);
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		String ticketAdult = req.getParameter("ticketAdult");
		String ticketStd= req.getParameter("ticketStd");
		String ticketChild = req.getParameter("ticketChild");
		String ticketSeat = (String)session.getAttribute("ticketSeat");
		String ticketCd = (String)session.getAttribute("ticketCd");
		
		System.out.println("Id : " + memId + ", 성인 : " + ticketAdult 
				+ ", 학생 : " + ticketStd + ", 어린이 : " + ticketChild
				+ ", ticketseat : " + ticketSeat + ", ticketCd : " + ticketCd);
		
		
		
		
		doGet(req, resp);
	}
}
