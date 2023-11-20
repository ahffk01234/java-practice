package eagles.news.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.comm.util.MyBatisUtil;
import eagles.news.vo.TeamBoardVO;

public class TeamBoardDaoImpl implements ITeamBoardDao {

	private static ITeamBoardDao tbDao;
	private TeamBoardDaoImpl() {
	}
	
	public static ITeamBoardDao getInstance() {
		if(tbDao == null) {
			tbDao = new TeamBoardDaoImpl();
		}
		return tbDao;
	}
	
	// 해당 게시물 열람
	@Override
	public TeamBoardVO getBoard(String teamboardCd) {
		
		SqlSession session = MyBatisUtil.getInstance();
		TeamBoardVO tbv = null;
		
		try {
			tbv = session.selectOne("teamBoard.getBoard", teamboardCd);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return tbv;
	}
	
	// 해당 내용의 게시물 조회
	@Override
	public List<TeamBoardVO> getSearchBoard(TeamBoardVO tbv) {
		
		List<TeamBoardVO> tbList = new ArrayList<TeamBoardVO>();
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			tbList = session.selectList("teamBoard.getSearchBoard", tbv);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return tbList;
	}

	// 전체 게시물 조회
	@Override
	public List<TeamBoardVO> getAllBoard(Map<String,Object> map) {
		List<TeamBoardVO> tbList = new ArrayList<TeamBoardVO>();
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			tbList = session.selectList("teamBoard.getAllBoard", map);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return tbList;
	}
	
	// 게시물 총 수
	@Override
	public int getAllBoardTotal() {
		SqlSession session = MyBatisUtil.getInstance();
		int getTotal = 0;
		try {
			getTotal = session.selectOne("teamBoard.getAllBoardTotal");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return getTotal;
	}

	// 게시물 등록
	@Override
	public int insertBoard(TeamBoardVO tbv) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("teamBoard.insertBoard", tbv);
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	// 게시물 수정
	@Override
	public int updateBoard(TeamBoardVO tbv) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.update("teamBoard.updateBoard", tbv);
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	// 게시물 삭제
	@Override
	public int deleteBoard(String teamboardCd) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.delete("teamBoard.deleteBoard", teamboardCd);
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	

}
