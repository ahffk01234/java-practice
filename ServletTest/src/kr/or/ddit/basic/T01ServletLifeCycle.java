package kr.or.ddit.basic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class T01ServletLifeCycle extends HttpServlet{
	

	public T01ServletLifeCycle() {
		System.out.println("T01ServletLifeCycle 생성자 호출됨.");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("T01ServletLifeCycle init() 호출됨.");
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("T01ServletLifeCycle service() 호출됨.");
		super.service(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 메서드 방식이 GET방식인 경우 호출됨.
		System.out.println("doGet() 메서드 호출됨");
		
		throw new ServletException("제가 발생시킨 서블릿 예외입니다");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 메서드 방식이 POST방식인 경우 호출됨
		System.out.println("doPost() 메서드 호출됨.");
	}
	
	@Override
	public void destroy() {
		// 서블릿 객체 소멸시(컨테이너로부터 서블릿 객체 제거시) 필요한 코드 작성...
		System.out.println("destroy() 메서드 호출됨.");
	}
	
}
