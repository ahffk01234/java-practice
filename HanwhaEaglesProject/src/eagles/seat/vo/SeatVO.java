package eagles.seat.vo;

public class SeatVO {
	private String seatCd;
	private String gameCd;
	private String seatRes;
	private String memId;
	private String ticketCd;
	
	public SeatVO() {}

	public SeatVO(String seatCd, String gameCd, String seatRes, String memId, String ticketCd) {
		super();
		this.seatCd = seatCd;
		this.gameCd = gameCd;
		this.seatRes = seatRes;
		this.memId = memId;
		this.ticketCd = ticketCd;
	}

	public SeatVO(String ticketCd) {
		super();
		this.ticketCd = ticketCd;
	}

	public String getSeatCd() {
		return seatCd;
	}

	public void setSeatCd(String seatCd) {
		this.seatCd = seatCd;
	}

	public String getGameCd() {
		return gameCd;
	}

	public void setGameCd(String gameCd) {
		this.gameCd = gameCd;
	}

	public String getSeatRes() {
		return seatRes;
	}

	public void setSeatRes(String seatRes) {
		this.seatRes = seatRes;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getTicketCd() {
		return ticketCd;
	}

	public void setTicketCd(String ticketCd) {
		this.ticketCd = ticketCd;
	}

}

