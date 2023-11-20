package eagles.shop.product.controller;

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
import eagles.shop.product.vo.ProdVO;

@WebServlet(value = "/shop/productMain.do")
public class ProductMainController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		IProdService prodService = ProdServiceImpl.getInstance();
		
		List<ProdVO> prodList = prodService.showProductAll();
		
		req.setAttribute("prodList", prodList);
		String memId = (String) session.getAttribute("LogMemId");
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/productMain.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		String prodCd = req.getParameter("prodCd");
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		req.setAttribute("prodCd", prodCd);
		RequestDispatcher rd = req.getRequestDispatcher("/shop/productMain.do");
		rd.forward(req, resp);
		*/
		doGet(req, resp);
		
		
	}
	
}


