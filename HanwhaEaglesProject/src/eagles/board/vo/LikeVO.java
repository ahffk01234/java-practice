package eagles.board.vo;

public class LikeVO {
	
	private String boardCd;
	private String memId;
	
	public LikeVO() {}
	
	public LikeVO(String boardCd, String memId) {
		super();
		this.boardCd = boardCd;
		this.memId = memId;
	}

	public String getBoardCd() {
		return boardCd;
	}

	public void setBoardCd(String boardCd) {
		this.boardCd = boardCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
	
	
}
