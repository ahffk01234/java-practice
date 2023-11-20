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
import eagles.comm.util.MyBatisUtil;
import eagles.forecast.dao.MyBatisDao;


@WebServlet (value = "/ask/getAnswerYet.do")
public class AnswerYet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		IAskService askService = AskServiceImpl.getInstance();
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		List<AskVO> askList = askService.getAnswerYet();
				
		System.out.println(memId);
		
		
		req.setAttribute("getAnswerYet", askList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ask/getAnswerYet.jsp");
		rd.forward(req, resp);
	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doGet(req, resp);
		
	}

}
