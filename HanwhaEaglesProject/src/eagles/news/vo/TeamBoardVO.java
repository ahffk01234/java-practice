package eagles.news.vo;

public class TeamBoardVO {

	private String teamboardCd; // 게시물 번호
	private String teamboardTitle; // 제목
	private String teamboardContent;
	private String teamboardDate;
	private String teamboardFix; // 고정여부
	private String memId;
	private String teamboardImg;
	
	private int rnum;	//페이징의 글순서

	
	public TeamBoardVO() {}

	
	
	public TeamBoardVO(String teamboardCd, String teamboardTitle, String teamboardContent, String teamboardFix,
			String memId) {
		super();
		this.teamboardCd = teamboardCd;
		this.teamboardTitle = teamboardTitle;
		this.teamboardContent = teamboardContent;
		this.teamboardFix = teamboardFix;
		this.memId = memId;
	}



	public TeamBoardVO(String teamboardTitle, String teamboardContent, String teamboardFix, String memId) {
		super();
		this.teamboardTitle = teamboardTitle;
		this.teamboardContent = teamboardContent;
		this.teamboardFix = teamboardFix;
		this.memId = memId;
	}

	
	
//	public TeamBoardVO(String teamboardCd, String teamboardTitle, String teamboardContent, String teamboardDate,
//			String teamboardFix, String memId) {
//		super();
//		this.teamboardCd = teamboardCd;
//		this.teamboardTitle = teamboardTitle;
//		this.teamboardContent = teamboardContent;
//		this.teamboardDate = teamboardDate;
//		this.teamboardFix = teamboardFix;
//		this.memId = memId;
//	}
	
	
	public TeamBoardVO(String teamboardCd, String teamboardTitle, String teamboardContent, String teamboardFix,
			String memId, String teamboardImg) {
		super();
		this.teamboardCd = teamboardCd;
		this.teamboardTitle = teamboardTitle;
		this.teamboardContent = teamboardContent;
		this.teamboardFix = teamboardFix;
		this.memId = memId;
		this.teamboardImg = teamboardImg;
	}



	public TeamBoardVO(String teamboardCd, String teamboardTitle, String teamboardContent, String teamboardDate,
			String teamboardFix, String memId, String teamboardImg, int rnum) {
		super();
		this.teamboardCd = teamboardCd;
		this.teamboardTitle = teamboardTitle;
		this.teamboardContent = teamboardContent;
		this.teamboardDate = teamboardDate;
		this.teamboardFix = teamboardFix;
		this.memId = memId;
		this.teamboardImg = teamboardImg;
		this.rnum = rnum;
	}



	public String getTeamboardImg() {
		return teamboardImg;
	}



	public void setTeamboardImg(String teamboardImg) {
		this.teamboardImg = teamboardImg;
	}



	public String getTeamboardCd() {
		return teamboardCd;
	}
	public void setTeamboardCd(String teamboardCd) {
		this.teamboardCd = teamboardCd;
	}
	public String getTeamboardTitle() {
		return teamboardTitle;
	}
	public void setTeamboardTitle(String teamboardTitle) {
		this.teamboardTitle = teamboardTitle;
	}
	public String getTeamboardContent() {
		return teamboardContent;
	}
	public void setTeamboardContent(String teamboardContent) {
		this.teamboardContent = teamboardContent;
	}
	public String getTeamboardDate() {
		return teamboardDate;
	}
	public void setTeamboardDate(String teamboardDate) {
		this.teamboardDate = teamboardDate;
	}
	public String getTeamboardFix() {
		return teamboardFix;
	}
	public void setTeamboardFix(String teamboardFix) {
		this.teamboardFix = teamboardFix;
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
