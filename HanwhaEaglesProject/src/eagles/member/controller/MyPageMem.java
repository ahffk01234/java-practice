package eagles.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;
import eagles.member.vo.MemberVO;

@MultipartConfig
@WebServlet("/MyPageMem.do")
public class MyPageMem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPageMem() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String LogMemId = (String) session.getAttribute("LogMemId");
		
		RequestDispatcher disp = request.getRequestDispatcher("views/login/MyPageMem.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = request.getParameter("userId");
		String memPw = request.getParameter("userPw");
		String memName = request.getParameter("userName");
		String memNickname = request.getParameter("nickname");
		String memTel = request.getParameter("userCell");
		
		// 생년월일 문자열로 받고 date 타입으로 변환
		String memBirth = request.getParameter("birthdate");
		
		
		// 이메일 주소
//		String userEm = request.getParameter("userEm");
//		String userDm = request.getParameter("userDm");
		String memMail = request.getParameter("userMail");
		
		// 주소
//		String add1 = request.getParameter("userAddr");
//		String add2 = request.getParameter("userAddr2");
		String memAddr = request.getParameter("userAddr");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		MemberVO mv = new MemberVO(memId, memPw, memName, memNickname, memTel, 
				memBirth, memMail, memAddr);
		
		int cnt = memService.updateMember(mv);
		System.out.println(" cnt 값 >> " + cnt);
		
		 String result;
		    if (cnt > 0) {
		        result = "success";
		    } else {
		        result = "fail";
		    }

		    response.setContentType("text/plain");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(result);
		}
}