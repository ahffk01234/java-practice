package eagles.forecast.service;

import java.util.List;

import eagles.forecast.dao.ForecastDaoImpl;
import eagles.forecast.dao.IForecastDao;
import eagles.forecast.vo.ForecastVO;
import eagles.forecast.vo.GamesVO;
import eagles.forecast.vo.TalkVO;

public class ForecastServiceImpl implements IForecastService{

	private IForecastDao forecastDao;
	
	private static IForecastService forecastService;
	
	private ForecastServiceImpl() {
		forecastDao = ForecastDaoImpl.getInstance();
	}
	
	public static IForecastService getInstance() {
		if(forecastService == null) {
			forecastService = new ForecastServiceImpl();
		}
		return forecastService;
	}
	
	@Override
	public List<TalkVO> showTalk(String gameCd) {
		return forecastDao.showTalk(gameCd);
	}

	@Override
	public int inputTalk(TalkVO tv) {
		return forecastDao.inputTalk(tv);
	}

	@Override
	public int inputForecast(ForecastVO fv) {
		return forecastDao.inputForecast(fv);
	}

	@Override
	public List<ForecastVO> showForecast(String gameCd) {
		return forecastDao.showForecast(gameCd);
	}

	@Override
	public int updateGameResult(ForecastVO fv) {
		
		return forecastDao.updateGameResult(fv);
	}

	@Override
	public GamesVO getScore(String gameCd) {
		// TODO Auto-generated method stub
		return forecastDao.getGameScore(gameCd);
	}

}
