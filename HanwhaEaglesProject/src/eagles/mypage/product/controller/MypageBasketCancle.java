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


@WebServlet (value = "/mypage/basketCancle.do")
public class MypageBasketCancle extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		
		HttpSession session = req.getSession();		
		String memId = (String)session.getAttribute("LogMemId");
		
		
		/* 폼 파라미터 */
		String vProdCd = req.getParameter("vProdCd");
		String vCartCd = req.getParameter("vCartCd");
		
		System.out.println(vProdCd);
		System.out.println(vCartCd);

		MypageProductVO vo = new MypageProductVO();
	    vo.setProdCd(vProdCd);
	    vo.setCartCd(vCartCd);
		
		int myProductCancle = prodService.myProductCancle(vo);
		
		System.out.println(myProductCancle);
	
		/* xml위치 > 스트링값으로 xml수정*/
		req.setAttribute("myProductCancle", myProductCancle);
		
		System.out.println("도착했음");
		
		resp.sendRedirect("/mypage/basketList.do");
					
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {	
		doGet(req, resp);			
	}

}
