package eagles.forecast.controller;

import java.io.IOException;
import java.util.List;

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
import eagles.forecast.vo.GamesVO;
import eagles.forecast.vo.TalkVO;

@WebServlet(value = "/forecast.do")
public class ForecastController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String gameCd = "2023013";
		HttpSession session = req.getSession();
		String memId = (String) session.getAttribute("LogMemId");

		req.setAttribute("memID", memId);

		IForecastService forecastService = ForecastServiceImpl.getInstance();
		List<TalkVO> talkList = forecastService.showTalk("2023013");

		req.setAttribute("talkList", talkList);

		List<ForecastVO> forecastList = forecastService.showForecast("2023013");

		GamesVO gv = forecastService.getScore(gameCd);

		//System.out.println(gv.getGameScore());

		req.setAttribute("forecastList", forecastList);

		int talkSize = talkList.size();
		if (talkSize == 0) {
			System.out.println("응원톡 없음");

		} else {
			for (TalkVO tv : talkList) {
				System.out.println(tv.getTalkContent());
			}
		}

		int forecastSize = forecastList.size();
		if (forecastSize == 0) {
			System.out.println("승뷰예측 없음");

		} else {
			for (ForecastVO fv : forecastList) {
				System.out.println("forecast에 입력된 경기결과" + fv.getForecastCd());
			}
		}

		int home = 0;
		for (ForecastVO vo : forecastList) {
			if (vo.getTeamCd().equals("01")) {
				home++;
			}
		}

		int away = 0;
		for (ForecastVO vo : forecastList) {
			if (vo.getTeamCd().equals("09")) {
				away++;
			}
		}

		System.out.println("홈팀선택 :" + home);
		System.out.println("어웨이팀선택 :" + away);

		System.out.println("전테 리스트 사이즈 : " + forecastList.size());

		
		//System.out.println("게임결과!!!! : " + gv.getGameScore());
		
		if (!gv.getGameScore().equals("경기전")) {

			RequestDispatcher rd = req.getRequestDispatcher("/views/forecast/forecastresult.jsp");
			rd.forward(req, resp);
			
			
		} else {

			RequestDispatcher rd = req.getRequestDispatcher("/views/forecast/forecast.jsp");
			rd.forward(req, resp);

		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String memId = (String) session.getAttribute("LogMemId");

		System.out.println("응원톡 아이디 : " + memId);

		String talkContent = req.getParameter("comment");

		IForecastService forecastService = ForecastServiceImpl.getInstance();

		TalkVO tv = new TalkVO("2023013", talkContent, memId);
		int cnt = forecastService.inputTalk(tv);

		if (cnt > 0) {
			resp.setStatus(HttpServletResponse.SC_OK); // 응답 상태 코드를 200으로 설정
			resp.getWriter().write("success"); // "success"라는 문자열을 응답으로 전송

		} else {
			resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED); // 응답 상태 코드를 401으로 설정 (권한 없음)
			resp.getWriter().write("failure"); // "failure"라는 문자열을 응답으로 전송

		}

	}

}
