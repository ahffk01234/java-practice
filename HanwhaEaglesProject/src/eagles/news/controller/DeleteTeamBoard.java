package eagles.news.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.news.service.ITeamBoardService;
import eagles.news.service.TeamBoardServiceImpl;

@WebServlet("/DeleteTeamBoard.do")
public class DeleteTeamBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteTeamBoard() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String teamboardCd = request.getParameter("tbCode");
		ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();

		int cnt = tbService.deleteBoard(teamboardCd);
		System.out.println(" cnt >> " + cnt);
		
		String result;
		if (cnt > 0) {
			result = "success";
		} else {
			result = "fail";
		}

		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(result);
	}

}
