package eagles.ask.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.ask.vo.AskVO;
import eagles.comm.util.MyBatisUtil;
import eagles.shop.product.dao.MyBatisDao;

public class AskDaoImpl extends MyBatisDao implements IAskDao {
	
	private static IAskDao askDao;
	
	private AskDaoImpl() {};
	
	public static IAskDao getInstance() {
		if(askDao == null) {
			askDao = new AskDaoImpl();
		}
		return askDao;
	}

	@Override
	public List<AskVO> getAskAll() {
		
		List<AskVO> askList = new ArrayList<AskVO>();
		
		askList = selectList("ask.getAskAll");
		
		return askList;
	}

	
	
	@Override
	public List<AskVO> getAnswerYet() {
		
		List<AskVO> answerYet = new ArrayList<AskVO>();
		
		answerYet = selectList("ask.getAnswerYet");
		
		return answerYet;
	}
	

	@Override
	public List<AskVO> getAskByMem(String memId) {
		
		List<AskVO> askByMem = new ArrayList<AskVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			askByMem = session.selectList("ask.getAskByMem", memId);
		}catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return askByMem;
	}
	
	
	
	@Override
	public List<AskVO> readAsk(String askCd) {
		
		List<AskVO> readAsk = new ArrayList<AskVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			readAsk = session.selectList("ask.readAsk", askCd);
		}catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return readAsk;
	}
	
	
	

	@Override
	public int insertAsk(AskVO av) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("ask.insertAsk",av);
			session.commit();
		}catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}
		return cnt;
	}
	
	

	@Override
	public int deleteAsk(String askCd) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("ask.deleteAsk",askCd);
			session.commit();
		}catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}
		return cnt;
	}

	
	
	@Override
	public int updateAsk(AskVO av) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("ask.updateAsk",av);
			session.commit();
		}catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	
}
