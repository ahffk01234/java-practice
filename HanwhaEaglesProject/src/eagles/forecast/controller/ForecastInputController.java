package eagles.forecast.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.forecast.service.ForecastServiceImpl;
import eagles.forecast.service.IForecastService;
import eagles.forecast.vo.ForecastVO;

@WebServlet("/forecast/input.do")
public class ForecastInputController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String gameCd = "2023013";
		String teamCd = req.getParameter("teamCd");
		
		System.out.println(teamCd);
		
		HttpSession session = req.getSession();
		String memId = (String) session.getAttribute("LogMemId");
		
		System.out.println(memId);
		
		ForecastVO fv = new ForecastVO(gameCd, memId, teamCd);
		IForecastService forecastService = ForecastServiceImpl.getInstance();

		int cnt = forecastService.inputForecast(fv);
		
		
		if(cnt > 0) {
			resp.setStatus(HttpServletResponse.SC_OK); // 응답 상태 코드를 200으로 설정
	        resp.getWriter().write("success"); // "success"라는 문자열을 응답으로 전송
		
		}else {
			resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 응답 상태 코드를 401으로 설정 (권한 없음)
	        resp.getWriter().write("failure"); // "failure"라는 문자열을 응답으로 전송
			
		}
		
		
		
	}
	
	
	
	
}
