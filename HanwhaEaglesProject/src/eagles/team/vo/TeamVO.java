package eagles.team.vo;

public class TeamVO {
	private String teamCd;
	private String teamName;
	private String teamLogo;
	
	public TeamVO() {}
	
	public TeamVO(String teamCd, String teamName, String teamLogo) {
		super();
		this.teamCd = teamCd;
		this.teamName = teamName;
		this.teamLogo = teamLogo;
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
