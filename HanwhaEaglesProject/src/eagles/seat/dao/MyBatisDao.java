package eagles.seat.dao;

import java.util.Collections;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.comm.util.MyBatisUtil;


public class MyBatisDao {
	/**
	 * 
	 * @param <T>
	 * @param statement
	 * @return
	 */
	public <T> T selectOne(String statement) { // 특정 경기 코드에 대한 정보

		SqlSession sqlSession = MyBatisUtil.getInstance(true);

		T obj = null;

		try {
			obj = sqlSession.selectOne(statement);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 데이터 조회 중 예외발생!", ex);
		} finally {
			sqlSession.close();
		}

		return obj;

	}
/**
 * 
 * @param <T>
 * @param statement
 * @param parameter
 * @return
 */
	public <T> T selectOne(String statement, Object parameter) { // 특정 경기 코드에 대한 해당 객체

		SqlSession sqlSession = MyBatisUtil.getInstance(true);

		T obj = null;

		try {
			obj = sqlSession.selectOne(statement, parameter);
		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 데이터 조회 중 예외발생!", ex);
		} finally {
			sqlSession.close();
		}

		return obj;

	}

	/**
	 * 
	 * @param <T>
	 * @param statement
	 * @return
	 */
	public <T> List<T> selectList(String statement) {

		SqlSession session = MyBatisUtil.getInstance();

		List<T> list = Collections.EMPTY_LIST;

		try {
			list = session.selectList(statement);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 목록 조회 중 예외 발생!", ex);
		} finally {
			session.close();
		}

		return list;

	}

	/**
	 * 
	 * @param <T>
	 * @param statement
	 * @param parameter
	 * @return
	 */
	public <T> List<T> selectList(String statement, Object parameter) {

		SqlSession session = MyBatisUtil.getInstance(true);

		List<T> list = Collections.EMPTY_LIST;

		try {
			list = session.selectList(statement, parameter);

		} catch (PersistenceException ex) {
			throw new RuntimeException("마이바티스에서 목록 조회 중 예외 발생!", ex);
		} finally {
			session.close();
		}

		return list;

	}

	/**
	 * 
	 * @param statement
	 * @param parameter
	 * @return
	 */
	public int insert(String statement, Object parameter) {

		SqlSession session = MyBatisUtil.getInstance();

		int cnt = 0;

		try {
			cnt = session.insert(statement, parameter);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			throw new RuntimeException("마이바티스에서 데이터 등록 중 예외 발생", ex);
		} finally {
			session.close();
		}

		return cnt;
	}

	/**
	 * 
	 * @param statement
	 * @param parameter
	 * @return
	 */
	public int update(String statement, Object parameter) {

		SqlSession session = MyBatisUtil.getInstance();

		int cnt = 0;

		try {
			cnt = session.update(statement,parameter);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			throw new RuntimeException("마이바티스에서 데이터 수정 중 예외 발생", ex);
		} finally {
			session.close();
		}

		return cnt;
	}

	/**
	 * 
	 * @param statement
	 * @param parameter
	 * @return
	 */
	public int delete(String statement, Object parameter) {

		SqlSession session = MyBatisUtil.getInstance();

		int cnt = 0;

		try {
			cnt = session.delete(statement, parameter);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			throw new RuntimeException("마이바티스에서 데이터 삭제 중 예외 발생", ex);
		} finally {
			session.close();
		}

		return cnt;
	}
}
