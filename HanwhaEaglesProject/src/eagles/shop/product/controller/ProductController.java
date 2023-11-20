package eagles.shop.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;
import eagles.shop.product.vo.CartDtVO;
import eagles.shop.product.vo.CartVO;
import eagles.shop.product.vo.ProdRevVO;
import eagles.shop.product.vo.ProdVO;

@WebServlet(value = "/shop/product.do")
public class ProductController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		///shop/product.do?ProdCd=300004&ProdNm=개똥이
		String prodCd = req.getParameter("ProdCd");
//		String ProdNm = req.getParameter("ProdNm");
		
		System.out.println("파라미터:" + prodCd);
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		ProdVO pv = prodService.showProduct(prodCd);
		List<ProdRevVO> prodRevList = new ArrayList<ProdRevVO>();
		prodRevList = prodService.showProdRev(prodCd);
		
		//pv : ProdVO [prodCd=300004, prodName=한화이글스 어센틱 후드조끼, prodPrice=59000
		//, prodStock=1000, prodImg=\img\prod\300004 한화이글스 어센틱 후드조끼.png, prodContent=
		//, lProdCd=300, prodImg2=\img\prod\300004dt 한화이글스 어센틱 후드조끼.jpg]
		//System.out.println("pv : " + pv);
		
		req.setAttribute("prodRevList", prodRevList);
		req.setAttribute("pv", pv);
		
		System.out.println(prodRevList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/product.jsp");
		rd.forward(req, resp);
	}
	
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cartCd = null;
		String cartPrice = null;
		String cartMethod = null;
		Date cartDate = null;
		String cartPay = null;
		String cartDtOpt = null;
		
		 
		HttpSession session = req.getSession();
		
		String memId = (String)session.getAttribute("LogMemId");
		
		String prodCd = req.getParameter("prodCd");
		String cartDtNum = req.getParameter("num");
		String cartDtSize = req.getParameter("option");
		
		System.out.println(memId);
		System.out.println("장바구니 상품코드:" + prodCd);
		System.out.println("장바구니 수량 파라미터:" + cartDtNum);
		System.out.println("장바구니 사이즈 파라미터:" + cartDtSize);
		
		IProdService prodService = ProdServiceImpl.getInstance();
		
		CartVO cv = new CartVO(cartCd, cartPrice, cartMethod, cartDate, cartPay, memId);
		CartDtVO cdv = new CartDtVO(cartCd, prodCd, cartDtNum, cartDtSize, cartDtOpt, memId);
		
		
		int cnt = prodService.inputCart(cv);
		int cnt1 = prodService.inputCartDt(cdv);
		
		
		System.out.println("성공 : " + cnt + "," + cnt1);
				
		if (cnt > 0) {
			resp.setStatus(HttpServletResponse.SC_OK); // 응답 상태 코드를 200으로 설정
	        resp.getWriter().write("success"); // "success"라는 문자열을 응답으로 전송
		} else {
			resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 응답 상태 코드를 401으로 설정 (권한 없음)
	        resp.getWriter().write("failure"); // "failure"라는 문자열을 응답으로 전송
			
		}
		
		//rd.forward(req, resp);
		
		
		 
		// resp.sendRedirect("/mypage/basketList.do");
		
		
		//RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/mypageBasketList.jsp");
		;
		
		
		
		
		
	}
	
	
	
}



