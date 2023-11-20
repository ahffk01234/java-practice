package eagles.shop.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.shop.product.service.IProdService;
import eagles.shop.product.service.ProdServiceImpl;
import eagles.shop.product.vo.ProdRevVO;

@WebServlet(value="/inputrev.do")
public class InputRev extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	String prodRevContent = "";
	String prodRevScore = "";
	String memId = "";
	String prodCd = "";
	
	
	
	prodRevContent = req.getParameter("review");
	prodRevScore = req.getParameter("score");
	
	HttpSession session = req.getSession();
	memId = (String) session.getAttribute("LogMemId");
	
	prodCd = req.getParameter("prodCd");
		
	System.out.println("리뷰내용" + prodRevContent);
	System.out.println("리뷰 점수" + prodRevScore);
	System.out.println("리뷰 아이디" + memId);
	System.out.println("리뷰 상품코드" + prodCd);
	
	ProdRevVO prv = new ProdRevVO(prodRevContent, prodRevScore, memId, prodCd);
	
	IProdService prodService = ProdServiceImpl.getInstance();
	
	int cnt = prodService.inputRev(prv);
	
	if (cnt > 0) {
		resp.setStatus(HttpServletResponse.SC_OK); // 응답 상태 코드를 200으로 설정
        resp.getWriter().write("success"); // "success"라는 문자열을 응답으로 전송
	} else {
		resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 응답 상태 코드를 401으로 설정 (권한 없음)
        resp.getWriter().write("failure"); // "failure"라는 문자열을 응답으로 전송
		
	}
	
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
