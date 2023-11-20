package eagles.forecast.vo;


public class GamesVO {
	
	private String gameCode; // 경기코드
	private String gameScore = "0:0"; // 경기점수결과
	private String gameHome; // 홈경기여부
	private String gameResult ="경기예정"; // 승패코드
	private String teamCode; // 구단코드
	private String gameDate; // 경기일시
	private String teamLogo;
	private String gameMonth;
	
	public GamesVO() {}

	
	
	public GamesVO(String gameCode, String gameScore) {
		super();
		this.gameCode = gameCode;
		this.gameScore = gameScore;
	}



	public GamesVO(String gameCode, String gameScore, String gameHome, String gameResult, String teamCode,
			String gameDate,String gameMonth, String teamLogo) {
		super();
		this.gameCode = gameCode;
		this.gameScore = gameScore;
		this.gameHome = gameHome;
		this.gameResult = gameResult;
		this.teamCode = teamCode;
		this.gameDate = gameDate;
		this.gameMonth= gameMonth;
		this.teamLogo= teamLogo;
	}

	public String getTeamLogo() {
		return teamLogo;
	}

	public void setTeamLogo(String teamLogo) {
		this.teamLogo = teamLogo;
	}

	public String getGameCode() {
		return gameCode;
	}

	public void setGameCode(String gameCode) {
		this.gameCode = gameCode;
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

	public String getTeamCode() {
		return teamCode;
	}

	public void setTeamCode(String teamCode) {
		this.teamCode = teamCode;
	}

	public String getGameDate() {
		return gameDate;
	}

	public void setGameDate(String gameDate) {
		this.gameDate = gameDate;
	}

	public String getGameMonth() {
		return gameMonth;
	}

	public void setGameMonth(String gameMonth) {
		this.gameMonth = gameMonth;
	}
	
}
