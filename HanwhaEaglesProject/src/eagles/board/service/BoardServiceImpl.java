package eagles.board.service;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import eagles.board.dao.BoardDaoImpl;
import eagles.board.dao.IBoardDao;
import eagles.board.vo.LikeVO;
import eagles.board.vo.ReportVO;
import eagles.board.vo.BoardVO;
import eagles.board.vo.CommentVO;

public class BoardServiceImpl implements IBoardService {

   private IBoardDao bdDao;
   private static IBoardService bdService;
   private BoardServiceImpl() {
      bdDao = BoardDaoImpl.getInstance();
   }
   
   public static IBoardService getInstance() {
      if(bdService == null) {
         bdService = new BoardServiceImpl();
      }
      return bdService;
   }
   
   @Override
   public BoardVO getBoard(String boardCd) {
      return bdDao.getBoard(boardCd);
   }

   @Override
   public List<BoardVO> getSearchBoard(BoardVO bv) {
      return bdDao.getSearchBoard(bv);
   }

   @Override
   public List<BoardVO> getAllBoard(Map<String,Object> map) {
      return bdDao.getAllBoard(map);
   }

   @Override
   public int getAllBoardTotal() {
      return bdDao.getAllBoardTotal();
   }

   @Override
   public int insertBoard(BoardVO bv) {
       return bdDao.insertBoard(bv);
   }

   @Override
   public int updateBoard(BoardVO bv) {
      return bdDao.updateBoard(bv);
   }

   @Override
   public int deleteBoard(String boardCd) {
      return bdDao.deleteBoard(boardCd);
   }

   @Override
   public int likeChk(LikeVO lv) {
      return bdDao.likeChk(lv);
   }

   @Override
   public int likeUpdate(LikeVO lv) {
      return bdDao.likeUpdate(lv);
   }

   @Override
   public int likeDelete(LikeVO lv) {
      return bdDao.likeDelete(lv);
   }

@Override
public int likeAll(String boardCd) {
	return bdDao.likeAll(boardCd);
}

@Override
public int sendReport(ReportVO rv) {
	return bdDao.sendReport(rv);
}

@Override
public List<ReportVO> reportAll(Map<String,Object> map) {
	return bdDao.reportAll(map);
}

@Override
public int reportTotal() {
	return bdDao.reportTotal();
}

@Override
public int deleteReport(String boardCd) {
	return bdDao.deleteReport(boardCd);
}

@Override
public int passReport(ReportVO rv) {
	return bdDao.passReport(rv);
}

@Override
public List<CommentVO> getAllComment(String boardCd) {
	return bdDao.getAllComment(boardCd);
}

@Override
public int insertComment(CommentVO cv) {
	return bdDao.insertComment(cv);
}

@Override
public int updateComment(CommentVO cv) {
	return bdDao.updateComment(cv);
}

@Override
public int deleteComment(String commentCd) {
	return bdDao.deleteComment(commentCd);
}




   

   

}