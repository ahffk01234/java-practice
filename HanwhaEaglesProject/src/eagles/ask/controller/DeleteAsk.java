package eagles.ask.controller;

import java.io.IOException;
import java.util.List;

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


@WebServlet ("/ask/deleteAsk.do")
public class DeleteAsk extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IAskService askService = AskServiceImpl.getInstance();
		
		System.out.println("도착쓰");
		
		HttpSession session = req.getSession();
		
		String askCd = req.getParameter("askCd");
		
		System.out.println(askCd);
	
		int deleteAsk = askService.deleteAsk(askCd);
		
		req.setAttribute("deleteAsk", deleteAsk);
		
		System.out.println("도착했음");
		
		resp.sendRedirect("/ask/getAskByMem.do");
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
	

}
