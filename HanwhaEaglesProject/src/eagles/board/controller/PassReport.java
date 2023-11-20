package eagles.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.ReportVO;

@WebServlet("/PassReport.do")
public class PassReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PassReport() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// 게시번호
		String boardCd = request.getParameter("boardCd");
		String reportId = request.getParameter("reportId");
		IBoardService bdService = BoardServiceImpl.getInstance();
		ReportVO rv = new ReportVO(boardCd, reportId);
		
		int cnt = bdService.passReport(rv);

	String result;
	if(cnt > 0) {
		result = "success";
    } else {
        result = "fail";
    }

    response.setContentType("text/plain");
    response.setCharacterEncoding("UTF-8");
    response.getWriter().write(result);
	
	}
}


