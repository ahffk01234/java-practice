package eagles.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;

@WebServlet("/DeleteComment.do")
public class DeleteComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteComment() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String commentCd = request.getParameter("commentCd");
		
		IBoardService bdService = BoardServiceImpl.getInstance();
		
		int cnt = bdService.deleteComment(commentCd);

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
