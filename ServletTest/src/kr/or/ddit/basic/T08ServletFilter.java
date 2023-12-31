package kr.or.ddit.basic;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class T08ServletFilter implements Filter{
/*
 	
 	서블릿 필터에 대하여...
 	
 	1. 사용목적
 	- 클라이언트의 요청을 수행하기 전에 가로채 필요한 작업을 수행할 수 있다.
 	- 클라이언트에 응답정보를 제공하기 전에 응답정보에 필요한 작업을 수행할 수 있다.
 	
 	2. 사용 예
 	- 인증필터
 	- 데이터 압축필터
 	- 인코딩 필터
 	- 로깅 및 검사처리 필터
 	- 이미지 변환 필터 등.
 */
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}

}
