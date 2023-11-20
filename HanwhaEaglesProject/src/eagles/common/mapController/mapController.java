package eagles.common.mapController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;


@WebServlet (value = "/common/stadiumMap.do")
public class mapController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		String startDay = req.getParameter("start_day");
//		String endDay = req.getParameter("end_day");
//		String searchContent = req.getParameter("search_content");
		
		IProdService prodService = ProdServiceImpl.getInstance();
	
		HttpSession session = req.getSession();
		String memId = (String)session.getAttribute("LogMemId");
		System.out.println("memId : " + memId);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/common/stadiumMap.jsp");
		rd.forward(req, resp);
		
//		if(startDay == null && endDay == null && searchContent == null) {
//	
//		}
		

			
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
