package eagles.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 서블릿에 진입했으므로 실제 이동하고자 하는 경로 WEB-INF/secureIndex.jsp로 이동하기
		RequestDispatcher disp = request.getRequestDispatcher("views/login/login.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String uId = request.getParameter("userId");
		String uPw = request.getParameter("userPw");
		
		System.out.println("넘어온 유저정보>>" + uId + " / " + uPw);
		
		//MVC2 =>	Model-vo에 담겨 service에서 처리되는 데이터, 
		//			View- jsp에서 최종 응답 가공,
		//			Controller-servlet의 역할이 나눠져 각자의 역할을 진행하는 구조
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mId", uId);
		map.put("mPw", uPw);
		
		//서비스 객체가 필요 - 싱글톤 방식
		IMemberService service = MemberServiceImpl.getInstance();
		String memId = service.loginChk(map);

		System.out.println("db조회 결과 >>" + memId);
		
		HttpSession session = request.getSession();
		session.setAttribute("LogMemId", memId);
		
		if (memId != null) {
	        // 로그인 성공
	        response.setStatus(HttpServletResponse.SC_OK); // 응답 상태 코드를 200으로 설정
	        response.getWriter().write("success"); // "success"라는 문자열을 응답으로 전송
	    } else {
	        // 로그인 실패
	        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 응답 상태 코드를 401으로 설정 (권한 없음)
	        response.getWriter().write("failure"); // "failure"라는 문자열을 응답으로 전송
	    }
	}
}
