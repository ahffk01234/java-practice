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

@WebServlet (value = "/mypage/basketList.do")
public class MypageBasketListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IProdService prodService = ProdServiceImpl.getInstance();
				
		
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		String memName = (String)session.getAttribute("memName");
		String prodCd = (String) session.getAttribute("prodCd");
		String cartDtNum = (String) session.getAttribute("cartDtNum");
		String cartDtSize = (String) session.getAttribute("cartDtSize");
		String cartDtOpt = (String) session.getAttribute("cartDtOpt");
		
		System.out.println(memId);
		

		
		if(cartDtNum != null ) {
			System.out.println("어트리뷰트" + prodCd);
			System.out.println("어트리뷰트" + cartDtNum);
			System.out.println("어트리뷰트" + cartDtSize);
			System.out.println("어트리뷰트" + cartDtOpt);
		} else {
			System.out.println("어트리뷰트는 널!!");
		}
					
		List<MypageProductVO> myProductList = prodService.myProductList(memId);

		req.setAttribute("myProductList", myProductList);
	
		RequestDispatcher rd = req.getRequestDispatcher("/views/shopViews/mypageBasketList.jsp");
		rd.forward(req, resp);
		
		
			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
	}

}

