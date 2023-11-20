package eagles.mypage.product.controller;

import java.io.IOException;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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


@WebServlet	(value = "/mypage/productSearch.do")
public class MyProductSearch extends HttpServlet{
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		System.out.println("memId : " + memId);
		List<MypageProductVO> myProductList = prodService.showMypageProduct(memId);
		
		System.out.println(memId);
		
		String startDay = req.getParameter("start_day");
		String endDay = req.getParameter("end_day");
		String searchContent = req.getParameter("search_content");

		MypageProductVO vo = new MypageProductVO();
	    vo.setStartDay(startDay);
	    vo.setEndDay(endDay);
	    vo.setSearchContent(searchContent);
	    vo.setMemId(memId);
	    
	    System.out.println("startDay : " + startDay);
	    System.out.println("endDay : " + endDay);
	    System.out.println("searchContent : " + searchContent);
		
	    System.out.println("MyProductSearch->vo : " + vo);
	    
		List<MypageProductVO> myProductsearch = prodService.searchContent(vo);	
		
		System.out.println("myProductsearch : " + myProductsearch);
		
		/* xml위치 > 스트링값으로 xml수정*/
		req.setAttribute("searchContent", myProductsearch);
		RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/mypageSearch.jsp");
		rd.forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
}
