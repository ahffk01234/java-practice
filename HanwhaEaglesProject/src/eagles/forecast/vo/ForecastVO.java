package eagles.forecast.vo;

public class ForecastVO {
	private String gameCd;
	private String memId;
	private String forecastCd;
	private String teamCd;
	
	public ForecastVO() {}
	
	
	public ForecastVO(String gameCd, String memId, String forecastCd, String teamCd) {
		super();
		this.gameCd = gameCd;
		this.memId = memId;
		this.forecastCd = forecastCd;
		this.teamCd = teamCd;
	}
	
	public ForecastVO(String gameCd, String memId, String teamCd) {
		super();
		this.gameCd = gameCd;
		this.memId = memId;
		this.teamCd = teamCd;
	}
	
	

	public ForecastVO(String gameCd, String forecastCd) {
		super();
		this.gameCd = gameCd;
		this.forecastCd = forecastCd;
	}


	public String getGameCd() {
		return gameCd;
	}

	public void setGameCd(String gameCd) {
		this.gameCd = gameCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getForecastCd() {
		return forecastCd;
	}

	public void setForecastCd(String forecastCd) {
		this.forecastCd = forecastCd;
	}

	public String getTeamCd() {
		return teamCd;
	}

	public void setTeamCd(String teamCd) {
		this.teamCd = teamCd;
	}

	

}
