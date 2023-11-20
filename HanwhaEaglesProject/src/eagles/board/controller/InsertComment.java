package eagles.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.CommentVO;

@WebServlet("/InsertComment.do")
public class InsertComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertComment() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String commentContent = request.getParameter("bdcomment");
		String memId = request.getParameter("LogMemId");
		String boardCd = request.getParameter("boardCd");
		
		CommentVO cv = new CommentVO(commentContent, memId, boardCd);
		IBoardService bdService = BoardServiceImpl.getInstance();
		
		int cnt = bdService.insertComment(cv);
		
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
