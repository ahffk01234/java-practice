package eagles.ask.service;

import java.util.List;

import eagles.ask.dao.AskDaoImpl;
import eagles.ask.dao.IAskDao;
import eagles.ask.vo.AskVO;
import eagles.forecast.dao.MyBatisDao;

public class AskServiceImpl extends MyBatisDao implements IAskService {
	
	private IAskDao askDao;
	
	private static IAskService askService;
	
	private AskServiceImpl() {
		askDao = AskDaoImpl.getInstance();
	}
	
	public static IAskService getInstance() {
		if(askService == null) {
			askService = new AskServiceImpl();
		}
		return askService;
	}
	
	

	@Override
	public List<AskVO> getAskAll() {
	
		return askDao.getAskAll();
	}

	@Override
	public List<AskVO> getAnswerYet() {

		return askDao.getAnswerYet();
	}

	@Override
	public List<AskVO> getAskByMem(String memId) {

		return askDao.getAskByMem(memId);
	}
	
	@Override
	public List<AskVO> readAsk(String askCd) {

		return askDao.readAsk(askCd);
	}

	@Override
	public int insertAsk(AskVO av) {

		return askDao.insertAsk(av);
	}

	@Override
	public int deleteAsk(String askCd) {

		return askDao.deleteAsk(askCd);
	}

	@Override
	public int updateAsk(AskVO av) {

		return askDao.updateAsk(av);
	}



}
