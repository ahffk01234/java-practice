package eagles.member.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
@WebServlet("/Join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Join() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		RequestDispatcher req = request.getRequestDispatcher("views/login/join.jsp");
		req.forward(request, response); 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String memId = request.getParameter("userID");
		String memPw = request.getParameter("userPw");
		String memName = request.getParameter("userName");
		String memNickname = request.getParameter("nickname");
		String memTel = request.getParameter("userCell");
		
		// 생년월일 문자열로 받고 date 타입으로 변환
		String memBirth = request.getParameter("birthdate");
		
		
		// 이메일 주소
		String userEm = request.getParameter("userEm");
		String userDm = request.getParameter("userDm");
		String memMail = userEm + "@" + userDm;
		
		// 주소
		String add1 = request.getParameter("userAddr");
		String add2 = request.getParameter("userAddr2");
		String memAddr = add1 + " " + add2;
		
		
		// 서비스 객체 생성
		IMemberService memService = MemberServiceImpl.getInstance();
		
		// 등록
		MemberVO mv = new MemberVO(memId, memPw, memName, memNickname, memTel, 
				memBirth, memMail, memAddr);
		
		int cnt = memService.insertMember(mv);
		
		HttpSession httpSession = request.getSession();
		response.sendRedirect("/views/login/joincom.jsp");
	}

}
