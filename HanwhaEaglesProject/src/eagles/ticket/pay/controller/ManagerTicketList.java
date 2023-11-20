package eagles.ticket.pay.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.ticket.pay.service.ITicketPayService;
import eagles.ticket.pay.service.TicketPayServiceImpl;
import eagles.ticket.pay.vo.TicketPayVO;


// 티켓 예매내역
@WebServlet("/AllTicketPay.do")
public class ManagerTicketList extends HttpServlet {
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		String memId = (String)session.getAttribute("LogMemId");
		
		String gameCd = req.getParameter("gameCd");
		
		System.out.println("게임코드 파라미터 : " + gameCd);
		System.out.println("회원 ID : " + memId);
		
		ITicketPayService ticketpayService = TicketPayServiceImpl.getInstance();
		
		List<TicketPayVO> myticketPayList = ticketpayService.getAllPayTicket();
		
		req.setAttribute("myTicketList", myticketPayList);

		resp.setCharacterEncoding("utf-8");

		RequestDispatcher rd = req.getRequestDispatcher("/views/ticketpay/Allticketpay.jsp");
		rd.forward(req,resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
