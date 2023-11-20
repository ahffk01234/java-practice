package eagles.board.service;

import java.util.List;
import java.util.Map;

import eagles.board.vo.LikeVO;
import eagles.board.vo.ReportVO;
import eagles.board.vo.BoardVO;
import eagles.board.vo.CommentVO;

public interface IBoardService {
	
	// 게시판 crud
	public BoardVO getBoard(String boardCd);

	public List<BoardVO> getSearchBoard(BoardVO bv);

	public List<BoardVO> getAllBoard(Map<String,Object> map);

	public int getAllBoardTotal();
	
	public int insertBoard(BoardVO bv);
	
	public int updateBoard(BoardVO bv);
	
	public int deleteBoard(String boardCd);
	
	// 좋아요
	public int likeChk(LikeVO lv);

	public int likeUpdate(LikeVO lv);

	public int likeDelete(LikeVO lv);
	
	public int likeAll(String boardCd);
	
	// 신고
	public int sendReport(ReportVO rv);
	
	public List<ReportVO> reportAll(Map<String,Object> map);

	public int reportTotal();
	
	public int deleteReport(String boardCd);
	
	public int passReport(ReportVO rv);
	
	// 댓글
	public List<CommentVO> getAllComment(String boardCd);
	
	public int insertComment(CommentVO cv);
	
	public int updateComment(CommentVO cv);
	
	public int deleteComment(String commentCd);




}
