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

@WebServlet("/SendReport.do")
public class SendReport extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SendReport() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boardCd = request.getParameter("boardCd");
		String reportId = request.getParameter("logMemId");
		String reportContent = request.getParameter("reportContent");
		
		ReportVO rv = new ReportVO(boardCd, reportId, reportContent);
		IBoardService bdService = BoardServiceImpl.getInstance();
		
		int cnt = bdService.sendReport(rv);
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
