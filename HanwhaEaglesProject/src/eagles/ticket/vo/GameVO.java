package eagles.ticket.vo;

public class GameVO {

	private String gameCd;
	private String gameDate;
	private String gameScore = "0:0";
	private String gameHome;
	private String gameResult = "경기예정";
	private String teamCd;
	private String teamName;
	private String teamLogo;
	private String gameMonth;
	
	public GameVO() {};


	public GameVO(String gameCd, String gameDate, String gameScore, String gameHome, String gameResult, String teamCd,
			String teamName, String teamLogo, String gameMonth) {
		super();
		this.gameCd = gameCd;
		this.gameDate = gameDate;
		this.gameScore = gameScore;
		this.gameHome = gameHome;
		this.gameResult = gameResult;
		this.teamCd = teamCd;
		this.teamName = teamName;
		this.teamLogo = teamLogo;
		this.gameMonth = gameMonth;
	}


	public GameVO(String gameDate, String gameScore, String gameHome, String gameResult, String teamCd,
			String teamName, String teamLogo) {
		super();

		this.gameDate = gameDate;
		this.gameScore = gameScore;
		this.gameHome = gameHome;
		this.gameResult = gameResult;
		this.teamCd = teamCd;
		this.teamName = teamName;
		this.teamLogo = teamLogo;
	}


	public String getGameMonth() {
		return gameMonth;
	}


	public void setGameMonth(String gameMonth) {
		this.gameMonth = gameMonth;
	}


	public String getGameCd() {
		return gameCd;
	}


	public void setGameCd(String gameCd) {
		this.gameCd = gameCd;
	}


	public String getGameDate() {
		return gameDate;
	}


	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}


	public String getGameScore() {
		return gameScore;
	}


	public void setGameScore(String gameScore) {
		this.gameScore = gameScore;
	}


	public String getGameHome() {
		return gameHome;
	}


	public void setGameHome(String gameHome) {
		this.gameHome = gameHome;
	}


	public String getGameResult() {
		return gameResult;
	}


	public void setGameResult(String gameResult) {
		this.gameResult = gameResult;
	}


	public String getTeamCd() {
		return teamCd;
	}


	public void setTeamCd(String teamCd) {
		this.teamCd = teamCd;
	}


	public String getTeamName() {
		return teamName;
	}


	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}


	public String getTeamLogo() {
		return teamLogo;
	}


	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}


	
	
	
	
}
