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
import eagles.forecast.vo.TalkVO;

@WebServlet(value="/gameresult.do")
public class GameResultController extends HttpServlet{

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
		
		
		
		req.setAttribute("forecastList", forecastList);
		
		int talkSize = talkList.size();
		if(talkSize == 0){
			System.out.println("응원톡 없음");
			
		}else {
			for(TalkVO tv : talkList){
				System.out.println(tv.getTalkContent());
			}
		}
		
		int forecastSize = forecastList.size();
		if(forecastSize == 0){
			System.out.println("승뷰예측 없음");
			
		}else {
			for(ForecastVO fv : forecastList){
				System.out.println("선택한 팀코드 리스트" + fv.getTeamCd());
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
		
	    String resultData = req.getParameter("data");
        
        // 받아온 데이터(resultData)를 처리하는 코드 작성
        System.out.println("입력된 데이터(경기결과): " + resultData);
        
        // 처리 로직 및 필요한 작업 수행       
        
        ForecastVO fv = new ForecastVO(gameCd, resultData);
        int cnt = forecastService.updateGameResult(fv);;
        
        
        if(cnt >0) {
        // 응답 처리
        resp.setContentType("text/html");
        resp.getWriter().println("Success"); // 응답 데이터 출력
        }else {
        	
        }
	    
	    
	    
	    
	    
	    
		RequestDispatcher rd = req.getRequestDispatcher("/views/forecast/forecastresult.jsp");
		rd.forward(req, resp);
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doGet(req, resp);
		
		
	}
	
}
