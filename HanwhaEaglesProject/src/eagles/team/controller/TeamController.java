package eagles.team.controller;

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
//import eagles.team.service.ITeamService;
//import eagles.team.service.TeamServiceImpl;
//import eagles.team.vo.TeamVO;

@WebServlet("/TeamController")
public class TeamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String gameCode = req.getParameter("gameCode");
		
//		ITeamService teamService = TeamServiceImpl.getInstance();
		IGameListService gameService = GameListServiceImpl.getInstance();
		
//		List<TeamVO> teamList = teamService.getTeamListAll();
		List<GamesVO> gameList = gameService.getAllGameList(gameCode);
		
//		req.setAttribute("teamList", teamList);
		req.setAttribute("gameList", gameList);
		
		resp.setCharacterEncoding("utf-8");
		
//		RequestDispatcher disp = req.getRequestDispatcher("views/ticketviews/ticketmain.jsp");
//		disp.forward(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
