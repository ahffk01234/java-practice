package eagles.ticket.pay.vo;

public class TicketPayVO {

	// ticket 테이블 부분
	private String ticketCd; // 티켓코드
	private String ticketPayCd; // 결제 코드
	private String ticketAdult;
	private String ticketStudent;
	private String ticketChild;
	private int ticketPayPrice; // 총 가격
	private String ticketPayMethod;
	private String ticketPayOk;
	private String ticketPayDate;
	private String ticketSeat;

	private String memId;

	public TicketPayVO() {
	}
	
	public TicketPayVO(int ticketPayPrice, String ticketCd) {
		super();
		this.ticketCd = ticketCd;
		this.ticketPayPrice = ticketPayPrice;
	}

	public TicketPayVO(String ticketCd) {
		super();
		this.ticketCd = ticketCd;
	}

	public TicketPayVO(String ticketCd, String ticketPayCd, String ticketAdult, String ticketStudent,
			String ticketChild, int ticketPayPrice, String ticketPayMethod, String ticketPayOk, String ticketPayDate, String ticketSeat,
			String memId) {
		super();
		this.ticketCd = ticketCd;
		this.ticketPayCd = ticketPayCd;
		this.ticketAdult = ticketAdult;
		this.ticketStudent = ticketStudent;
		this.ticketChild = ticketChild;
		this.ticketPayPrice = ticketPayPrice;
		this.ticketPayMethod = ticketPayMethod;
		this.ticketPayOk = ticketPayOk;
		this.ticketPayDate = ticketPayDate;
		this.ticketSeat = ticketSeat;
		this.memId = memId;
	}

	public String getTicketAdult() {
		return ticketAdult;
	}

	public void setTicketAdult(String ticketAdult) {
		this.ticketAdult = ticketAdult;
	}

	public String getTicketStudent() {
		return ticketStudent;
	}

	public void setTicketStudent(String ticketStudent) {
		this.ticketStudent = ticketStudent;
	}

	public String getTicketChild() {
		return ticketChild;
	}

	public void setTicketChild(String ticketChild) {
		this.ticketChild = ticketChild;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getTicketPayCd() {
		return ticketPayCd;
	}

	public void setTicketPayCd(String ticketPayCd) {
		this.ticketPayCd = ticketPayCd;
	}

	public String getTicketPayMethod() {
		return ticketPayMethod;
	}

	public void setTicketPayMethod(String ticketPayMethod) {
		this.ticketPayMethod = ticketPayMethod;
	}

	public String getTicketPayDate() {
		return ticketPayDate;
	}

	public void setTicketPayDate(String ticketPayDate) {
		this.ticketPayDate = ticketPayDate;
	}

	public String getTicketPayOk() {
		return ticketPayOk;
	}

	public void setTicketPayOk(String ticketPayOk) {
		this.ticketPayOk = ticketPayOk;
	}

	public int getTicketPayPrice() {
		return ticketPayPrice;
	}

	public void setTicketPayPrice(int ticketPayPrice) {
		this.ticketPayPrice = ticketPayPrice;
	}

	public String getTicketCd() {
		return ticketCd;
	}

	public void setTicketCd(String ticketCd) {
		this.ticketCd = ticketCd;
	}

	public String getTicketSeat() {
		return ticketSeat;
	}

	public void setTicketSeat(String ticketSeat) {
		this.ticketSeat = ticketSeat;
	}

	
}
