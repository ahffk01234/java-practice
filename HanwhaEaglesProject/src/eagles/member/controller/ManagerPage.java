package eagles.member.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import utils.ArticlePage;

@MultipartConfig
@WebServlet("/ManagerPage.do")
public class ManagerPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ManagerPage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memBlack = "1";
		
		//현재 페이지 번호
		String currentPageStr = request.getParameter("currentPage");
		int currentPage = 0;
		//한 화면에 보여질 행 수
		int size = 10;
		
		if(currentPageStr!=null) {
			currentPage = Integer.parseInt(currentPageStr);
		}else {
			currentPage = 1;
		}
		//쿼리 페이징 처리를 위한 맵
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("memBlack", "1");
		map.put("currentPage",currentPage);
		map.put("size",size);
		System.out.println("map : " + map);
		
		IMemberService memberService = MemberServiceImpl.getInstance();
		List<MemberVO> memList = memberService.getBlackMember(map);
		
		//블랙리스트 전체 인원수
		int total = memberService.getBlackMemberTotal();
		
		request.setAttribute("memList",new ArticlePage<MemberVO>(total, currentPage, size, memList));
		
		RequestDispatcher disp = request.getRequestDispatcher("views/login/ManagerPage.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String memId = request.getParameter("bId");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		int cnt = memService.updateBlack(memId);
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