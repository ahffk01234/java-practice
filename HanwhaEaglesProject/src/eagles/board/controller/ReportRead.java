package eagles.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.BoardVO;

@WebServlet("/ReportRead.do")
public class ReportRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportRead() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardCd = request.getParameter("boardCd");
		String reportId = request.getParameter("reportId");

        IBoardService bdService = BoardServiceImpl.getInstance();
        BoardVO bd = bdService.getBoard(boardCd);

        // 이미지 파일 경로
        String imageFileName = bd.getBoardImg();
        String imageRelativePath = "/img/boardUploadImg/" + imageFileName;

        request.setAttribute("bd", bd);
        request.setAttribute("reportId", reportId);
        
        request.setAttribute("imageRelativePath", imageRelativePath);

        RequestDispatcher rd = request.getRequestDispatcher("/views/board/reportRead.jsp");
        rd.forward(request, response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
