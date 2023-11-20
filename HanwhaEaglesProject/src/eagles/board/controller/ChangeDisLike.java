package eagles.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.LikeVO;

@WebServlet("/ChangeDisLike.do")
public class ChangeDisLike extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangeDisLike() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String boardCd = request.getParameter("boardCd");
		String memId = request.getParameter("memId");

		LikeVO lv = new LikeVO(boardCd, memId);
		IBoardService bdService = BoardServiceImpl.getInstance();

		int cnt = bdService.likeDelete(lv);
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
