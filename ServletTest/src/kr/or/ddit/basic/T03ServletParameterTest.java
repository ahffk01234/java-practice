package kr.or.ddit.basic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class T03ServletParameterTest extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 	요청 객체를 이용하여 파라미터 데이터를 가져오는 방법
		 	
		 	- getParameter() - 파라미터값이 한 개인 경우에 가져올 때 사용함.
		 	- getParameterValues() - 파라미터값이 여러 개인 경우에 사용함. ex) checkbox
		 	- getParameterNames() - 요청메시지에 존재하는 모든 파라미터 정보를 가져올 때 사용함
		 	
		 */
		
		// Post방식으로 넘어오는 Body 데이터를 인코딩 정보를 설정함
		// GET방식인 경우에는 톰캣의 URIEncoding 설정을 통해 처리할 수 있다.
		// 반드시 요청메시지로부터 값을 꺼내기 전에 설정해야 적용됨
		req.setCharacterEncoding("UTF-8");
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String gender = req.getParameter("gender");
		String hobby = req.getParameter("hobby");
		String rlgn= req.getParameter("rlgn");
		
		String[] food = req.getParameterValues("food");
		
		//////////////////////////////////////////////////////////////
		
		resp.setCharacterEncoding("UTF-8"); // 한글처리 인코딩
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		out.println("<html><body>");
		out.println("<p>username : " + username + "</p>");
		out.println("<p>password : " + password + "</p>");
		out.println("<p>gender : " + gender + "</p>");
		out.println("<p>hobby : " + hobby + "</p>");
		out.println("<p>rlgn : " + rlgn + "</p>");
		
		if(food != null) {
			for(String f : food) {
				out.println("<p>food : " + f + "</p>");
			}
		}
		
		Enumeration<String> paramNames = req.getParameterNames();
		
		while(paramNames.hasMoreElements()){
			String paramName = paramNames.nextElement();
			out.println("<p>파라미터 이름 : " + paramName + "</p>");
		}
		
		out.println("</body></html");
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
		
	}
	
}
