package dao;

import java.util.List;

import vo.BoardVO;

public interface IBoardDao {

	/*
	 	BoardVO에 담긴 데이터를 DB에 인서트
	 	성공하면 1, 실패하면 0 리턴
	 */
	public int insertBoard(BoardVO bv);
	
	/*
	 	해당 게시판 번호가 있는지의 여부에 따라
	 	존재하면 true, 존재하지 않으면 false 반환 
	 */
	public boolean checkBoard(String boardNo);
	
	/*
	 	모든 게시판에 대한 정보를 담을 List 객체
	 */
	public List<BoardVO> getAllBoard();
	
	/*
	 	게시판 정보 수정을 위한 메서드
	 	성공하면 1, 실패하면 0 반환
	 */
	public int updateBoard(BoardVO bv);
	
	/*
	 게시판 삭제를 위한 메서드 게시판 번호를 입력받아
	 해당 게시판을 삭제하는 메서드
	 성공하면 1, 실패하면 0 반환
	 */
	public int deleteBoard(String boardNo);
	
	/*
	 	게시판의 정보를 검색해 
	 	해당되는 게시판의 정보를 담을 List 객체
	 */
	public List<BoardVO> searchBoard(BoardVO bv);

}
