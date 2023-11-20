package eagles.mypage.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;
import eagles.shop.product.vo.MypageProductVO;

@WebServlet (value = "/mypage/basketPay.do")
public class MypageBaskeyPay extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		System.out.println("여기왔으면따블도착.");
		
		HttpSession session = req.getSession();		
		String memId = (String)session.getAttribute("LogMemId");
		
		
		/* 폼 파라미터 */
		
		int myProductPay = prodService.myProductPay(memId);
		
		System.out.println(myProductPay);
	
		/* xml위치 > 스트링값으로 xml수정*/
		req.setAttribute("myProductPay", myProductPay);
		
		System.out.println("도착했음");
		
		resp.sendRedirect("/mypage/basketList.do");
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
