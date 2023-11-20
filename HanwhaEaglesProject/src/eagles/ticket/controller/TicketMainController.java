package eagles.ticket.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.games.dao.GameDaoImpl;
import eagles.games.service.GameListServiceImpl;
import eagles.games.service.IGameListService;
import eagles.games.vo.GamesVO;
import eagles.team.service.ITeamService;
import eagles.team.service.TeamServiceImpl;
import eagles.team.vo.TeamVO;
import eagles.ticket.service.IPayTicketService;
import eagles.ticket.service.ITicketService;
import eagles.ticket.service.PayTicketServiceImpl;
import eagles.ticket.service.TicketServiceImpl;
import eagles.ticket.vo.GameVO;
import eagles.ticket.vo.TicketVO;

@WebServlet(value = "/ticket/ticketmain.do")
public class TicketMainController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//String gameCode = req.getParameter("gameCode");
		//System.out.println(gameCode);
		//String teamCode = req.getParameter("teamCode");

//		ITicketService ticketService = TicketServiceImpl.getInstance();
//		IGameListService gameListService = GameListServiceImpl.getInstance();
//		ITeamService teamService = TeamServiceImpl.getInstance();

//		List<TicketVO> ticketList = ticketService.showTicketAll();

//		List<TeamVO> teamList = teamService.getTeamListAll(teamCode);

		
		
//////////////////////////////////////////////////////////////////////////
		String gameCd = req.getParameter("gameCd");

		System.out.println("게임코드 파라미터 : " + gameCd);

		IPayTicketService payTicketService = PayTicketServiceImpl.getInstance();

		List<GameVO> gameAllList = payTicketService.showGameAllInfo();

		req.setAttribute("gameAllList", gameAllList);
//////////////////////////////////////////////////////////////////////////////

		resp.setCharacterEncoding("utf-8");

		RequestDispatcher rd = req.getRequestDispatcher("/views/ticketviews/ticketmain.jsp");
		rd.forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
