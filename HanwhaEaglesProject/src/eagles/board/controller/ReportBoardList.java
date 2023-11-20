package eagles.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.BoardVO;
import eagles.board.vo.ReportVO;
import utils.ArticlePage;

@WebServlet("/ReportBoardList.do")
public class ReportBoardList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ReportBoardList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String currentPageStr = request.getParameter("rpcurrentPage");
	      int currentPage = 0;
	      
	      // 한 화면에 보여질 행 수
	      int size = 10;

	      if (currentPageStr != null) {
	         currentPage = Integer.parseInt(currentPageStr);
	      } else {
	         currentPage = 1;
	      }
	      // 쿼리 페이징 처리를 위한 맵
	      Map<String, Object> map = new HashMap<String, Object>();
	      map.put("currentPage", currentPage);
	      map.put("size", size);
	      System.out.println("map : " + map);

	      IBoardService bdService = BoardServiceImpl.getInstance();
	      List<ReportVO> rvList = bdService.reportAll(map);
	      int total = bdService.reportTotal();
	      
	      ArticlePage<ReportVO> ap = new ArticlePage<ReportVO>(total, currentPage, size, rvList);
	      
	      request.setAttribute("rvList", ap);
	
	      RequestDispatcher disp = request.getRequestDispatcher("views/board/reportBoardList.jsp");
	      disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
