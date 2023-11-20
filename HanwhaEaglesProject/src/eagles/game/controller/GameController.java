package eagles.game.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.games.service.GameListServiceImpl;
import eagles.games.service.IGameListService;
import eagles.games.vo.GamesVO;
import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;

// 전체 경기 일정 출력
@WebServlet(value = "/gameList/game")
public class GameController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String gameCode = req.getParameter("gameCode");

		IGameListService gameService = GameListServiceImpl.getInstance();
		
		List<GamesVO> gameList = gameService.getAllGameList(gameCode);
		
		req.setAttribute("gameList", gameList);
		resp.setCharacterEncoding("utf-8");
		
		RequestDispatcher disp = req.getRequestDispatcher("views/ticketviews/ticketmain.jsp");
		disp.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
