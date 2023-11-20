package eagles.gall.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.gall.service.GallServiceImpl;
import eagles.gall.service.IGallService;
import eagles.gall.vo.GallVO;

@WebServlet(value="/gall.do")
public class gallController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		IGallService gallService = GallServiceImpl.getInstance();
		
		List<GallVO> gallList = gallService.showGall();
		
		for(GallVO gv : gallList) {
			System.out.println("이미지 경로 : " + gv.getGallImg());
		}
		
		req.setAttribute("gallList", gallList);
		
		RequestDispatcher rd = req.getRequestDispatcher("views/gallViews/gall.jsp");
		rd.forward(req, resp);

		System.out.println("결과 : " + gallList);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
