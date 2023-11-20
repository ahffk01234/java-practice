package eagles.forecast.dao;

import java.util.List;

import eagles.forecast.vo.ForecastVO;
import eagles.forecast.vo.GamesVO;
import eagles.forecast.vo.TalkVO;

public interface IForecastDao {
	
	public List<TalkVO> showTalk(String gameCd);
	
	public int inputTalk(TalkVO tv);
	
	public int inputForecast(ForecastVO fv);
	
	public List<ForecastVO> showForecast(String gameCd);
	
	public int updateGameResult(ForecastVO fv);
	
	public GamesVO getGameScore(String gameCd);
	
}
