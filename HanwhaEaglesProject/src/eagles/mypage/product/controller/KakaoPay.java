package eagles.mypage.product.controller;

import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.member.dao.IMemberDao;
import eagles.member.dao.MemberDaoImpl;
import eagles.member.vo.MemberVO;

@WebServlet (value = "/payment/kakao.do")
public class KakaoPay extends HttpServlet{
	  
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  IMemberService ims = MemberServiceImpl.getInstance();
		  
		  System.out.println("페이지로 넘어옴");
		  
		  HttpSession session = req.getSession();		
		  String memId = (String)session.getAttribute("LogMemId");
		  
		  MemberVO info = ims.getMember(memId);
//		  MemberVO info = ims.getMember("a0001");

		  
		  String sum = req.getParameter("sum");		
//		  String sum = "10000";		  
		  String name = info.getMemName();
		  String mail = info.getMemMail();
		  String tel = info.getMemTel();
		  String addr = info.getMemAddr();
		  
		  System.out.println("합계값 : "+sum);
		  System.out.println("회원이름값 : "+name);
		  System.out.println("회원이메일값 : "+mail);
		  System.out.println("회원번호값 : "+tel);
		  System.out.println("회원주소값 : "+addr);
		  
		  Map<String, Object> kakao = new HashMap<>();
		  
		  kakao.put("amount", sum);
		  kakao.put("buyerEmail", mail);
		  kakao.put("buyerName", name);
		  kakao.put("buyerTel", tel);
		  kakao.put("buyerAddr", addr);		  		  		  
		  
		  req.setAttribute("kakao", kakao);
		  
		  RequestDispatcher rd = req.getRequestDispatcher("/views/common/payment.jsp");
		  rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
  }