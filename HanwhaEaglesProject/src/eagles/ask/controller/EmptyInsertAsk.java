package eagles.ask.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;

@WebServlet (value = "/ask/emptyInsertAsk.do")
public class EmptyInsertAsk extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		System.out.println("여기왔으면따블도착.");
		
		HttpSession session = req.getSession();		
		String memId = (String)session.getAttribute("LogMemId");
		
		resp.sendRedirect("/views/ask/insertAsk.jsp");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}

}
