package eagles.ticket.vo;

public class SeatVO {

	private String seatCd;
	private String seatRes;
	
	public SeatVO() {}

	public SeatVO(String seatCd, String seatRes) {
		super();
		this.seatCd = seatCd;
		this.seatRes = seatRes;
	}

	public String getSeatCd() {
		return seatCd;
	}

	public void setSeatCd(String seatCd) {
		this.seatCd = seatCd;
	}

	public String getSeatRes() {
		return seatRes;
	}

	public void setSeatRes(String seatRes) {
		this.seatRes = seatRes;
	}
	
	
	
	
	
	
}
