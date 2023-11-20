package eagles.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.ticket.service.IPayTicketService;
import eagles.ticket.service.PayTicketServiceImpl;
import eagles.ticket.vo.GameVO;

@WebServlet(value = "/seatList.do")
public class SeatMain extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String gameCd = req.getParameter("gameCd");
		
		System.out.println("게임코드 파라미터 : " + gameCd);
		
		IPayTicketService payTicketService = PayTicketServiceImpl.getInstance();
		
		GameVO gv = payTicketService.showGameInfo(gameCd);
		
		req.setAttribute("gv", gv);
		req.setAttribute("gameCd", gameCd);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ticketviews/seatmain.jsp");
		rd.forward(req, resp);
	
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	
	
	
	}
	
}
