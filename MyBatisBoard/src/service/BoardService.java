package service;

import java.util.List;

import dao.BoardDaoImpl;
import dao.IBoardDao;
import vo.BoardVO;

public class BoardService implements IBoardService{

	private IBoardDao boardDao;
	
	private static IBoardService boardService;
	
	public BoardService() {
		boardDao = BoardDaoImpl.getIstance();
	}
	
	public static IBoardService getInstance() {
		if(boardService == null) {
			boardService = new BoardService();
		}
		return boardService;
	}
	@Override
	public int registerBoard(BoardVO bv) {
		return boardDao.insertBoard(bv);
	}

	@Override
	public boolean checkBoard(String boardNo) {
		return boardDao.checkBoard(boardNo);
	}

	@Override
	public List<BoardVO> getAllBoard() {
		return boardDao.getAllBoard();
	}

	@Override
	public int modifyBoard(BoardVO bv) {
		return boardDao.updateBoard(bv);
	}

	@Override
	public int removeBoard(String boardNo) {
		return boardDao.deleteBoard(boardNo);
	}

	@Override
	public List<BoardVO> searchBoard(BoardVO bv) {
		return boardDao.searchBoard(bv);
	}

}
