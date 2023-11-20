package eagles.ticket.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.games.service.GameListServiceImpl;
import eagles.games.service.IGameListService;
import eagles.games.vo.GamesVO;
import eagles.ticket.vo.TicketVO;

@WebServlet("/ticket/ticket.do")
public class ticketController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String gameCode = req.getParameter("gameCode");
		System.out.println(gameCode);
		System.out.println(gameCode);
		
		IGameListService gameListService = GameListServiceImpl.getInstance();
		
		GamesVO gm = gameListService.getGameList(gameCode);
		
		req.setAttribute("gm", gm);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ticket/myticket.jsp");
		rd.forward(req, resp);
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String memId = (String)session.getAttribute("LogMemId");
		String gameCode = req.getParameter("gameCode");
		String adult = req.getParameter("adult");
		String student = req.getParameter("student");
		String kid = req.getParameter("kid");
		String seat = null;
		String ticketCd = null;
		
		System.out.println(gameCode);
		System.out.println(adult);
		System.out.println(student);
		System.out.println(kid);
		
		
		IGameListService gameListService = GameListServiceImpl.getInstance();
		
		GamesVO gm = gameListService.getGameList(gameCode);
		TicketVO tk = new TicketVO(ticketCd, adult, student, kid, seat, memId);
		
		int cnt = gameListService.insertTicket(tk);
		resp.sendRedirect("/views/ticket/myticket.jsp");
//		RequestDispatcher rd = req.getRequestDispatcher("/views/ticket/myticket.jsp");
//		rd.forward(req, resp);
		

	}

}
