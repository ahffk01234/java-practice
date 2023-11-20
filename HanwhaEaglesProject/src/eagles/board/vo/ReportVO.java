package eagles.board.vo;

public class ReportVO {
	


	private String boardCd;
	private String reportId;
	private String reportContent;
	private String resultRst;
	
	private int rnum;   //페이징의 글순서

	
	public ReportVO(String boardCd, String reportId) {
		super();
		this.boardCd = boardCd;
		this.reportId = reportId;
	}
	
	public int getRnum() {
		return rnum;
	}



	public void setRnum(int rnum) {
		this.rnum = rnum;
	}



	public ReportVO(String boardCd, String reportId, String reportContent, String resultRst, int rnum) {
		super();
		this.boardCd = boardCd;
		this.reportId = reportId;
		this.reportContent = reportContent;
		this.resultRst = resultRst;
		this.rnum = rnum;
	}



	public ReportVO(){}

	
	
	public ReportVO(String boardCd, String reportId, String reportContent) {
		super();
		this.boardCd = boardCd;
		this.reportId = reportId;
		this.reportContent = reportContent;
	}



	public ReportVO(String boardCd, String reportId, String reportContent, String resultRst) {
		super();
		this.boardCd = boardCd;
		this.reportId = reportId;
		this.reportContent = reportContent;
		this.resultRst = resultRst;
	}

	public String getBoardCd() {
		return boardCd;
	}

	public void setBoardCd(String boardCd) {
		this.boardCd = boardCd;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getReportContent() {
		return reportContent;
	}

	public void setReportContent(String reportContent) {
		this.reportContent = reportContent;
	}

	public String getResultRst() {
		return resultRst;
	}

	public void setResultRst(String resultRst) {
		this.resultRst = resultRst;
	}
	
	
	
	
	
}
