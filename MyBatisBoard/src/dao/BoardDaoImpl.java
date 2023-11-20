package dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import MyBatisUtil.MyBatisUtil;
import sun.security.jca.GetInstance;
import vo.BoardVO;

public class BoardDaoImpl implements IBoardDao{

	private static IBoardDao boardDao;
	
	public BoardDaoImpl() {
		
	}
	
	public static IBoardDao getIstance() {
		if(boardDao == null) {
			boardDao = new BoardDaoImpl();
		}
		return boardDao;
	}
	
	@Override
	public int insertBoard(BoardVO bv) {
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("board.insertBoard",bv);
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return cnt;
	}

	@Override
	public boolean checkBoard(String boardNo) {
		boolean isExist = false;
		
		SqlSession session = MyBatisUtil.getInstance(true);
		
		try {
			int cnt = session.selectOne("board.checkBoard", boardNo);
			
			if(cnt > 0) {
				isExist = true;
				
			}
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		
		return isExist;
	}

	@Override
	public List<BoardVO> getAllBoard() {
		
		List<BoardVO> boardList = new ArrayList<BoardVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			boardList = session.selectList("board.getAllBoard");
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return boardList;
	}

	@Override
	public int updateBoard(BoardVO bv) {
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.update("board.updateBoard", bv);
			session.commit();
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return cnt;
	}

	@Override
	public int deleteBoard(String boardNo) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.delete("board.deleteBoard", boardNo);
			session.commit();
		}catch(PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public List<BoardVO> searchBoard(BoardVO bv) {
		
		List<BoardVO> boardList = Collections.EMPTY_LIST;
		
		SqlSession session = null;
		
		try {
			session = MyBatisUtil.getInstance(true);
			
			Map<String, String> paramMap = new HashMap<String, String>();
			paramMap.put("boardNo", bv.getBoardNo());
			paramMap.put("boardTitle", bv.getBoardTitle());
			paramMap.put("boardWriter", bv.getBoardWriter());
			paramMap.put("boardContent", bv.getBoardContent());
			
			boardList = session.selectList("board.searchBoard",paramMap);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return boardList;
	}

}
