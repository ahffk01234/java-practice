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

@MultipartConfig
@WebServlet("/DeleteId.do")
public class DeleteId extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteId() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("views/login/MyPageMem.jsp");
		disp.forward(request, response);
	}	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = request.getParameter("userId");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		int cnt = memService.deleteMember(memId);
		System.out.println(" cnt >> " + cnt);
		
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
