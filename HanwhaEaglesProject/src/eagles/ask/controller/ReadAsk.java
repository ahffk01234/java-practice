package eagles.ask.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.ask.service.AskServiceImpl;
import eagles.ask.service.IAskService;
import eagles.ask.vo.AskVO;
import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;
import eagles.shop.product.vo.MypageProductVO;


@WebServlet ("/ask/readAsk.do")
public class ReadAsk extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IAskService askService = AskServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		String askCd = req.getParameter("askCd");

		
		List<AskVO> readList = askService.readAsk(askCd);
		
		System.out.println(askCd);
		
		req.setAttribute("readAsk", readList);
		
		System.out.println("도착했음");
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ask/readAsk.jsp");
		rd.forward(req, resp);
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
	

}
