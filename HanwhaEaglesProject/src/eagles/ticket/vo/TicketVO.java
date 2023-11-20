package eagles.ticket.vo;

public class TicketVO {
	
	private String ticketCd;
	private String ticketAdult;
	private String ticketStd;
	private String ticketChild;
	private String ticketSeat;
	private String memId;
	
	public TicketVO() {}
	
	public TicketVO(String ticketCd, String ticketAdult, String ticketStd, String ticketChild, String ticketSeat,
			String memId) {
		super();
		this.ticketCd = ticketCd;
		this.ticketAdult = ticketAdult;
		this.ticketStd = ticketStd;
		this.ticketChild = ticketChild;
		this.ticketSeat = ticketSeat;
		this.memId = memId;
	}
	
	public TicketVO(String memId, String ticketSeat) {
		this.memId = memId;
		this.ticketSeat = ticketSeat;

	}
	
	public TicketVO(String ticketCd) {
		this.ticketCd = ticketCd;
	}
	
	public TicketVO(String ticketAdult, String ticketStd, String ticketChild, String ticketSeat) {
		this.ticketAdult = ticketAdult;
		this.ticketStd = ticketStd;
		this.ticketChild = ticketChild;
		this.ticketSeat = ticketSeat;
	}

	public String getTicketCd() {
		return ticketCd;
	}

	public void setTicketCd(String ticketCd) {
		this.ticketCd = ticketCd;
	}

	public String getTicketAdult() {
		return ticketAdult;
	}

	public void setTicketAdult(String ticketAdult) {
		this.ticketAdult = ticketAdult;
	}

	public String getTicketStd() {
		return ticketStd;
	}

	public void setTicketStd(String ticketStd) {
		this.ticketStd = ticketStd;
	}

	public String getTicketChild() {
		return ticketChild;
	}

	public void setTicketChild(String ticketChild) {
		this.ticketChild = ticketChild;
	}

	public String getTicketSeat() {
		return ticketSeat;
	}

	public void setTicketSeat(String ticketSeat) {
		this.ticketSeat = ticketSeat;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
}
	
	