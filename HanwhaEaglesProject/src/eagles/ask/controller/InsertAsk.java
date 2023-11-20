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


@WebServlet ("/ask/insertAsk.do")
public class InsertAsk extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IAskService askService = AskServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		AskVO av = new AskVO();
		av.setAskTitle(title);
		av.setAskContent(content);
		av.setMemId(memId);
		
		int insertAsk = askService.insertAsk(av);
		
		req.setAttribute("insertAsk", insertAsk);
		
		System.out.println("도착했음");
		
		resp.sendRedirect("/ask/getAskByMem.do");
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
	
	

}
