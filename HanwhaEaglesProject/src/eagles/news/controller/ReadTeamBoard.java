package eagles.news.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.news.service.ITeamBoardService;
import eagles.news.service.TeamBoardServiceImpl;
import eagles.news.vo.TeamBoardVO;

@WebServlet("/ReadTeamBoard.do")
public class ReadTeamBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReadTeamBoard() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String teamboardCd = request.getParameter("teamboardCd");
	
	System.out.println("넘어 온 게시물 번호 >> " + teamboardCd);
		
	ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();
	TeamBoardVO tbv = tbService.getBoard(teamboardCd);
	
    // 이미지 파일 경로
	String imageFileName = tbv.getTeamboardImg();
	String imageRelativePath = "/img/teamBoardUploadImg/" + imageFileName;
	
	request.setAttribute("tbv", tbv);
    request.setAttribute("imageRelativePath", imageRelativePath);

	
	RequestDispatcher rd = request.getRequestDispatcher("/views/teamBoard/readTeamBoard.jsp");
	rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
