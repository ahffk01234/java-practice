package eagles.board.dao;

import java.util.List;
import java.util.Map;

import eagles.board.vo.BoardVO;
import eagles.board.vo.CommentVO;
import eagles.board.vo.LikeVO;
import eagles.board.vo.ReportVO;

public interface IBoardDao {

	/**
	 * 해당 게시물 열람
	 * @param boardCd
	 * @return
	 */
	public BoardVO getBoard(String boardCd);
	
	
	/**
	 * 게시물 검색
	 * @return
	 */
	public List<BoardVO> getSearchBoard(BoardVO bv);
	
	
	/**
	 * 전체 게시물 조회
	 * @return
	 */
	public List<BoardVO> getAllBoard(Map<String,Object> map);
	
	/**
	 * 페이징을 위한 게시물 전체 수 
	 * @return
	 */
	public int getAllBoardTotal();
	
	/**
	 * 게시물 등록 
	 * @param bv
	 * @return
	 */
	public int insertBoard(BoardVO bv);
	
	/**
	 * 게시물 수정
	 * @param bv
	 * @return
	 */
	public int updateBoard(BoardVO bv);
	
	/**
	 * 게시물 삭제 
	 * @param bv
	 * @return
	 */
	public int deleteBoard(String boardCd);
	
	/**
	 * 좋아요 중복 체크
	 * @param m
	 * @return
	 */
	public int likeChk(LikeVO lv);
	
	/**
	 * 좋아요 등록
	 * @param m
	 * @return
	 */
	public int likeUpdate(LikeVO lv);
	
	/**
	 * 좋아요 삭제
	 * @param m
	 * @return
	 */
	public int likeDelete(LikeVO lv);
	
	/**
	 * 게시물의 좋아요 수
	 * @param boardCd
	 * @return
	 */
	public int likeAll(String boardCd);
	
	// 신고 등록
	public int sendReport(ReportVO rv);
	
	// 전 신고 게시물 조회
	public List<ReportVO> reportAll(Map<String,Object> map);

	// 페이징을 위한 신고 게시물 전체 수
	public int reportTotal();
	
	public int deleteReport(String boardCd);
	
	public int passReport(ReportVO rv);

	
	// 댓글
		public List<CommentVO> getAllComment(String boardCd);
		
		public int insertComment(CommentVO cv);
		
		public int updateComment(CommentVO cv);
		
		public int deleteComment(String commentCd);
	
	
}
