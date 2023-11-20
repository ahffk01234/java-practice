package service;

import java.util.List;

import vo.BoardVO;

public interface IBoardService {

	public int registerBoard(BoardVO bv);
	
	public boolean checkBoard(String boardNo);
	
	public List<BoardVO> getAllBoard();
	
	public int modifyBoard(BoardVO bv);
	
	public int removeBoard(String boardNo);
	
	public List<BoardVO> searchBoard(BoardVO bv);
	
}
