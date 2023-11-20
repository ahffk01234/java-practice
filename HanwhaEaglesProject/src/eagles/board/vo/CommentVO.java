package eagles.board.vo;

public class CommentVO {
	
	private String commentCd;
	private String commentContent;
	private String commentDate;
	private String commentLike;
	private String commentReport;
	private String memId;
	private String boardCd;
	
	public CommentVO() {}
	
	

	public CommentVO(String commentCd, String commentContent) {
		super();
		this.commentCd = commentCd;
		this.commentContent = commentContent;
	}



	public CommentVO(String commentContent, String memId, String boardCd) {
		super();
		this.commentContent = commentContent;
		this.memId = memId;
		this.boardCd = boardCd;
	}



	public CommentVO(String commentCd, String commentContent, String commentDate, String commentLike,
			String commentReport, String memId, String boardCd) {
		super();
		this.commentCd = commentCd;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.commentLike = commentLike;
		this.commentReport = commentReport;
		this.memId = memId;
		this.boardCd = boardCd;
	}

	public String getCommentCd() {
		return commentCd;
	}

	public void setCommentCd(String commentCd) {
		this.commentCd = commentCd;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public String getCommentLike() {
		return commentLike;
	}

	public void setCommentLike(String commentLike) {
		this.commentLike = commentLike;
	}

	public String getCommentReport() {
		return commentReport;
	}

	public void setCommentReport(String commentReport) {
		this.commentReport = commentReport;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getBoardCd() {
		return boardCd;
	}

	public void setBoardCd(String boardCd) {
		this.boardCd = boardCd;
	}
	
	
	
	
	
}
