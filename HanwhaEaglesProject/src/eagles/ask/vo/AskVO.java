package eagles.ask.vo;

import java.sql.Date;

public class AskVO {
	private String askCd;
	private String askTitle;
	private String askContent;
	private Date askDate;
	private String askAnswer;
	private String askAnswerTime;
	private String memId;
	
	@Override
	public String toString() {
		return "AskVO [askCd=" + askCd + ", askTitle=" + askTitle + ", askContent=" + askContent + ", askDate="
				+ askDate + ", askAnswer=" + askAnswer + ", askAnswerTime=" + askAnswerTime + ", memId=" + memId + "]";
	}

	public AskVO() {};	
	
	public AskVO(String askCd, String askTitle, String askContent, Date askDate, String askAnswer,
			String askAnswerTime, String memId) {
		super();
		this.askCd = askCd;
		this.askTitle = askTitle;
		this.askContent = askContent;
		this.askDate = askDate;
		this.askAnswer = askAnswer;
		this.askAnswerTime = askAnswerTime;
		this.memId = memId;
	}
	
	
	public String getAskCd() {
		return askCd;
	}


	public void setAskCd(String askCd) {
		this.askCd = askCd;
	}


	public String getAskTitle() {
		return askTitle;
	}


	public void setAskTitle(String askTitle) {
		this.askTitle = askTitle;
	}


	public String getAskContent() {
		return askContent;
	}


	public void setAskContent(String askContent) {
		this.askContent = askContent;
	}


	public Date getAskDate() {
		return askDate;
	}


	public void setAskDate(Date askDate) {
		this.askDate = askDate;
	}


	public String getAskAnswer() {
		return askAnswer;
	}


	public void setAskAnswer(String askAnswer) {
		this.askAnswer = askAnswer;
	}


	public String getAskAnswerTime() {
		return askAnswerTime;
	}


	public void setAskAnswerTime(String askAnswerTime) {
		this.askAnswerTime = askAnswerTime;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}



	



	

}
