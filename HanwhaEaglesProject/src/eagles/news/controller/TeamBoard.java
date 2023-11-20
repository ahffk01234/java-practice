package eagles.news.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.member.vo.MemberVO;
import eagles.news.service.ITeamBoardService;
import eagles.news.service.TeamBoardServiceImpl;
import eagles.news.vo.TeamBoardVO;
import utils.ArticlePage;

@WebServlet("/TeamBoard.do")
public class TeamBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public TeamBoard() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String currentPageStr = request.getParameter("tbcurrentPage");
		int currentPage = 0;
		// 한 화면에 보여질 행 수
		int size = 10;

		if (currentPageStr != null) {
			currentPage = Integer.parseInt(currentPageStr);
		} else {
			currentPage = 1;
		}
		// 쿼리 페이징 처리를 위한 맵
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("currentPage", currentPage);
		map.put("size", size);
		System.out.println("map : " + map);

		ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();
		List<TeamBoardVO> tbList = tbService.getAllBoard(map);
		
		int total = tbService.getAllBoardTotal();
		
		request.setAttribute("tbList", new ArticlePage<TeamBoardVO>(total, currentPage, size, tbList));

		
		RequestDispatcher disp = request.getRequestDispatcher("views/teamBoard/teamBoard.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
