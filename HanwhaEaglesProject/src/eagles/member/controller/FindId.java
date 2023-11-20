package eagles.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;
import eagles.member.vo.MemberVO;

@MultipartConfig
@WebServlet("/FindId.do")
public class FindId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FindId() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("views/login/findId.jsp");
		disp.forward(request, response);
	}	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memName = request.getParameter("userName");
		String memBirth = request.getParameter("birthdate");

//		String userEm = request.getParameter("userEm");
//		String userDm = request.getParameter("userDm");
		String memMail = request.getParameter("memMail");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		MemberVO mv = new MemberVO(memName, memBirth, memMail);
		
		mv = memService.findIdMember(mv);
		
		System.out.println(" db 조회 결과 >> " + mv.getMemId());
	
//		request.setAttribute("mv", mv);
		
		if(mv.getMemId() != null) {
	        response.setStatus(HttpServletResponse.SC_OK);
	        response.getWriter().write("{\"result\": \"success\", \"memId\": \"" + mv.getMemId() + "\", \"memRegDate\": \"" + mv.getMemRegDate() + "\"}"); 
	    } else {
	    	System.out.println(mv.getMemId());
	        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	        response.getWriter().write("{\"result\": \"fail\"}");  
	    }
	}

}
