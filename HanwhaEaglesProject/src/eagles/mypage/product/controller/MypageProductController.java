package eagles.mypage.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;
import eagles.shop.product.vo.MypageProductVO;

@WebServlet(value = "/mypage/productList.do")
public class MypageProductController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String startDay = req.getParameter("start_day");
//		String endDay = req.getParameter("end_day");
//		String searchContent = req.getParameter("search_content");
		
		IProdService prodService = ProdServiceImpl.getInstance();
	
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		System.out.println("memId : " + memId);
		List<MypageProductVO> myProductList = prodService.showMypageProduct(memId);
		
		System.out.println(memId);

		req.setAttribute("showMypageProduct", myProductList);
		RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/mypageProduct.jsp");
		rd.forward(req, resp);
		
//		if(startDay == null && endDay == null && searchContent == null) {
//	
//		}
		

			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
