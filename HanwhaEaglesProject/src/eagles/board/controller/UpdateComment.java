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

@WebServlet("/UpdateComment.do")
public class UpdateComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateComment() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String commentCd = request.getParameter("commentCd");
		String commentContent = request.getParameter("commentContent");
		IBoardService bdService = BoardServiceImpl.getInstance();
		
		CommentVO cv = new CommentVO(commentCd, commentContent);
		
		int cnt = bdService.updateComment(cv);
		
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
