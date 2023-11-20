package eagles.talk.vo;

import java.util.Date;

public class TalkVO {
	private String talkCd;
	private String gameCd;
	private String talkContent;
	private Date talkDate;
	private String talkReport;
	private String memId;
	
	public TalkVO() {}

	public TalkVO(String talkCd, String gameCd, String talkContent, Date talkDate, String talkReport, String memId) {
		super();
		this.talkCd = talkCd;
		this.gameCd = gameCd;
		this.talkContent = talkContent;
		this.talkDate = talkDate;
		this.talkReport = talkReport;
		this.memId = memId;
	}

	public String getTalkCd() {
		return talkCd;
	}

	public void setTalkCd(String talkCd) {
		this.talkCd = talkCd;
	}

	public String getGameCd() {
		return gameCd;
	}

	public void setGameCd(String gameCd) {
		this.gameCd = gameCd;
	}

	public String getTalkContent() {
		return talkContent;
	}

	public void setTalkContent(String talkContent) {
		this.talkContent = talkContent;
	}

	public Date getTalkDate() {
		return talkDate;
	}

	public void setTalkDate(Date talkDate) {
		this.talkDate = talkDate;
	}

	public String getTalkReport() {
		return talkReport;
	}

	public void setTalkReport(String talkReport) {
		this.talkReport = talkReport;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
