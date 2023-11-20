package eagles.board.vo;

public class BoardVO {
   
   private String boardCd;
   private String boardTitle;
   private String boardContent;
   private String boardDate;
   private String boardLike;
   private String boardReport;
   private String memId;
   
   // 이미지 경로
   private String boardImg;
   
   public BoardVO(String boardCd, String boardTitle, String boardContent, String boardDate, String boardLike,
         String boardReport, String memId, String boardImg, int rnum) {
      super();
      this.boardCd = boardCd;
      this.boardTitle = boardTitle;
      this.boardContent = boardContent;
      this.boardDate = boardDate;
      this.boardLike = boardLike;
      this.boardReport = boardReport;
      this.memId = memId;
      this.boardImg = boardImg;
      this.rnum = rnum;
   }



   public String getBoardImg() {
      return boardImg;
   }



   public void setBoardImg(String boardImg) {
      this.boardImg = boardImg;
   }

   private int rnum;   //페이징의 글순서

   
   public BoardVO() {}
   
   

   



   public BoardVO(String boardCd, String boardTitle, String boardContent, String memId, String boardImg) {
	super();
	this.boardCd = boardCd;
	this.boardTitle = boardTitle;
	this.boardContent = boardContent;
	this.memId = memId;
	this.boardImg = boardImg;
}



public BoardVO(String boardTitle, String boardContent, String memId, String boardImg) {
      super();
      this.boardTitle = boardTitle;
      this.boardContent = boardContent;
      this.memId = memId;
      this.boardImg = boardImg;
   }

   

   public BoardVO(String boardTitle, String boardContent, String memId) {
      super();
      this.boardTitle = boardTitle;
      this.boardContent = boardContent;
      this.memId = memId;
   }



   public BoardVO(String boardCd, String boardTitle, String boardContent, String boardDate, String boardLike,
         String boardReport, String memId) {
      super();
      this.boardCd = boardCd;
      this.boardTitle = boardTitle;
      this.boardContent = boardContent;
      this.boardDate = boardDate;
      this.boardLike = boardLike;
      this.boardReport = boardReport;
      this.memId = memId;
   }

   public String getBoardCd() {
      return boardCd;
   }

   public void setBoardCd(String boardCd) {
      this.boardCd = boardCd;
   }

   public String getBoardTitle() {
      return boardTitle;
   }

   public void setBoardTitle(String boardTitle) {
      this.boardTitle = boardTitle;
   }

   public String getBoardContent() {
      return boardContent;
   }

   public void setBoardContent(String boardContent) {
      this.boardContent = boardContent;
   }

   public String getBoardDate() {
      return boardDate;
   }

   public void setBoardDate(String boardDate) {
      this.boardDate = boardDate;
   }

   public String getBoardLike() {
      return boardLike;
   }

   public void setBoardLike(String boardLike) {
      this.boardLike = boardLike;
   }

   public String getBoardReport() {
      return boardReport;
   }

   public void setBoardReport(String boardReport) {
      this.boardReport = boardReport;
   }

   public String getMemId() {
      return memId;
   }

   public void setMemId(String memId) {
      this.memId = memId;
   }

   public int getRnum() {
      return rnum;
   }

   public void setRnum(int rnum) {
      this.rnum = rnum;
   }
   
   
   
}