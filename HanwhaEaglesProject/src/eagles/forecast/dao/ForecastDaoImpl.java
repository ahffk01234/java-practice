package eagles.forecast.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.comm.util.MyBatisUtil;
import eagles.forecast.vo.ForecastVO;
import eagles.forecast.vo.GamesVO;
import eagles.forecast.vo.TalkVO;

public class ForecastDaoImpl extends MyBatisDao implements IForecastDao {

	private static IForecastDao forecastDao;

	private ForecastDaoImpl() {

	}

	public static IForecastDao getInstance() {
		if (forecastDao == null) {
			forecastDao = new ForecastDaoImpl();
		}
		return forecastDao;
	}

	@Override
	public List<TalkVO> showTalk(String gameCd) {

		List<TalkVO> talkList = new ArrayList<TalkVO>();

		SqlSession session = MyBatisUtil.getInstance();

		try {
			talkList = session.selectList("forecast.showtalk", gameCd);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return talkList;
	}

	@Override
	public int inputTalk(TalkVO tv) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("forecast.inputtalk", tv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();

		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int inputForecast(ForecastVO fv) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("forecast.inputforecast", fv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();

		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public List<ForecastVO> showForecast(String gameCd) {

		List<ForecastVO> forecastList = new ArrayList<ForecastVO>();

		SqlSession session = MyBatisUtil.getInstance();

		try {
			forecastList = session.selectList("forecast.showforecast", gameCd);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return forecastList;
	}

	@Override
	public int updateGameResult(ForecastVO fv) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("forecast.updateGameResult", fv);
			cnt = session.update("forecast.updateGameResult2", fv);
			
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();

		} finally {
			session.close();
		}
		return cnt;
		
			}

	@Override
	public GamesVO getGameScore(String gameCd) {
		
		GamesVO gv = new GamesVO();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			gv = session.selectOne("forecast.getGameScore", gameCd);
			
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();

		} finally {
			session.close();
		}
		
		return gv;
	}

}
