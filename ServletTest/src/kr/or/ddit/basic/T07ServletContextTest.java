package kr.or.ddit.basic;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class T07ServletContextTest extends HttpServlet{
	
/*
	 서블릿 컨텍스트에 대하여...
	 
	 1. 서블릿 프로그램이 컨테이너와 정보를 주고 받기 위한 기능(메서드)를 제공한다.
	 
	 2. 웹 애플리케이션 당 1개씩 생성된다.
	 
*/
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ServletContext ctx = req.getServletContext();
		
		System.out.println("서블릿 컨텍스트의 기본 경로 : " + ctx.getContextPath());
		System.out.println("서버 정보 : " + ctx.getServerInfo());
		System.out.println("서블릿 API의 메이저 버전 정보 : " + ctx.getMajorVersion());
		System.out.println("서블릿 API의 마이너 버전 정보 : " + ctx.getMinorVersion());
		System.out.println("배포기술자에 기술된 컨텍스트명 : " + ctx.getServletContextName());
		System.out.println("리소스 경로 목록 : " + ctx.getResourcePaths("/"));
		System.out.println("파일에 대한 MIME 타입 정보 : " + ctx.getMimeType("abc.mp3"));
		System.out.println("파일 시스템 상의 실제 경로 : " + ctx.getRealPath("/"));
		
		// 속성값 설정
		ctx.setAttribute("attr1", "속성1");
		// 속성값 변경
		ctx.setAttribute("attr1", "속성2");
		// 속성값 가져오기
		System.out.println("attr1의 속성값 : " + ctx.getAttribute("attr1"));
		// 속성값 제거하기
		ctx.removeAttribute("attr1");
		
		// 로깅 작업하기(로그파일)
		ctx.log("서블릿 컨텍스트를 이용한 로깅 작업 중 입니다...");
		
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
	}
}
