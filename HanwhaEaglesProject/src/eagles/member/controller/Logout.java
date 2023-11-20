package eagles.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout.do")
public class Logout extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	// 세션 무효화
        HttpSession session = request.getSession(false); // 현재 세션을 가져옴 (세션 없을 경우 null 반환)
        if (session != null) {
            session.invalidate(); // 세션을 무효화하여 로그아웃 처리
        }
        
        // 로그아웃 후 리다이렉션할 페이지로 이동
        response.sendRedirect("/Homepage.do"); // 로그인 페이지로 리다이렉션
    }
}