package eagles.board.controller;

import java.io.File;
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


@WebServlet("/ReadBoard.do")
public class ReadBoard extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public ReadBoard() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String boardCd = request.getParameter("boardCd");

        IBoardService bdService = BoardServiceImpl.getInstance();
        BoardVO bd = bdService.getBoard(boardCd);

        // 이미지 파일 경로
        String imageFileName = bd.getBoardImg();
        String imageRelativePath = "/img/boardUploadImg/" + imageFileName;

        request.setAttribute("bd", bd);
        request.setAttribute("imageRelativePath", imageRelativePath);

        RequestDispatcher rd = request.getRequestDispatcher("/views/board/readBoard.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}