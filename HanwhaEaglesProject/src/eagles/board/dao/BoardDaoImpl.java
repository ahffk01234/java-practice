package eagles.board.dao;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.board.vo.BoardVO;
import eagles.board.vo.CommentVO;
import eagles.board.vo.LikeVO;
import eagles.board.vo.ReportVO;
import eagles.comm.util.MyBatisUtil;

public class BoardDaoImpl implements IBoardDao {

	private static IBoardDao tbDao;

	private BoardDaoImpl() {

	}

	public static IBoardDao getInstance() {
		if (tbDao == null) {
			tbDao = new BoardDaoImpl();
		}
		return tbDao;
	}

	@Override
	public BoardVO getBoard(String boardCd) {

		SqlSession session = MyBatisUtil.getInstance();
		BoardVO bv = null;

		try {
			bv = session.selectOne("board.getBoard", boardCd);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return bv;
	}

	@Override
	public List<BoardVO> getSearchBoard(BoardVO bv) {

		List<BoardVO> bdList = new ArrayList<BoardVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			bdList = session.selectList("board.getSearchBoard", bv);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return bdList;
	}

	@Override
	public List<BoardVO> getAllBoard(Map<String, Object> map) {

		List<BoardVO> bdList = new ArrayList<BoardVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			bdList = session.selectList("board.getAllBoard", map);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return bdList;
	}

	@Override
	public int getAllBoardTotal() {

		SqlSession session = MyBatisUtil.getInstance();
		int getTotal = 0;
		try {
			getTotal = session.selectOne("board.getAllBoardTotal");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return getTotal;
	}

	@Override
	public int insertBoard(BoardVO boardVO) {
		SqlSession session = MyBatisUtil.getInstance();
		int cnt = 0;

		try {
			cnt = session.insert("board.insertBoard", boardVO);
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
	public int updateBoard(BoardVO bv) {

		int cnt = 0;

		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.update("board.updateBoard", bv);
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
	public int deleteBoard(String boardCd) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("board.deleteBoard", boardCd);
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
	public int likeChk(LikeVO lv) {
		int result = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			result = (Integer) session.selectOne("board.likeChk", lv);

		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public int likeUpdate(LikeVO lv) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("board.likeUpdate", lv);
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
	public int likeDelete(LikeVO lv) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("board.likeDelete", lv);
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
	public int likeAll(String boardCd) {
		SqlSession session = MyBatisUtil.getInstance();
		int getTotal = 0;
		try {
			getTotal = session.selectOne("board.likeAll", boardCd);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return getTotal;
	}

	@Override
	public int sendReport(ReportVO rv) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("board.sendReport", rv);
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
	public List<ReportVO> reportAll(Map<String, Object> map) {
		List<ReportVO> rvList = new ArrayList<ReportVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			rvList = session.selectList("board.reportAll", map);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return rvList;
	}

	@Override
	public int reportTotal() {
		SqlSession session = MyBatisUtil.getInstance();
		int getTotal = 0;
		try {
			getTotal = session.selectOne("board.reportTotal");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return getTotal;
	}

	@Override
	public int deleteReport(String boardCd) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("board.deleteReport", boardCd);
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
	public int passReport(ReportVO rv) {
		
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("board.passReport", rv);
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
	public List<CommentVO> getAllComment(String boardCd) {
		
		List<CommentVO> cvList = new ArrayList<CommentVO>();
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cvList = session.selectList("board.getAllComment", boardCd);
		}catch(PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cvList;
	}

	@Override
	public int insertComment(CommentVO cv) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("board.insertComment", cv);
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
	public int updateComment(CommentVO cv) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.insert("board.updateComment", cv);
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
	public int deleteComment(String commentCd) {
		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();

		try {
			cnt = session.delete("board.deleteComment", commentCd);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	

}