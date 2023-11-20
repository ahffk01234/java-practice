package eagles.ticket.vo;

import java.util.Date;

public class TicketPayVO {

	private String ticketPayCd; // 결제코드
	private String ticketPayMethod; // 결제수단
	private int ticketPayPrice; // 총 가격
	private Date ticketPayDate; // 결제일자
	private String ticketPayOk; // 결제여부 default: 0
	private String ticketCd; // 티켓코드

	public TicketPayVO() {
	}

	

	public TicketPayVO(String ticketPayCd, String ticketPayMethod, int ticketPayPrice, Date ticketPayDate, String ticketPayOk, String ticketCd) {
		super();
		this.ticketPayCd = ticketPayCd;
		this.ticketPayMethod = ticketPayMethod;
		this.ticketPayPrice = ticketPayPrice;
		this.ticketPayDate = ticketPayDate;
		this.ticketPayOk = ticketPayOk;
		this.ticketCd = ticketCd;
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

	public int getTicketPayPrice() {
		return ticketPayPrice;
	}

	public void setTicketPayPrice(int ticketPayPrice) {
		this.ticketPayPrice = ticketPayPrice;
	}

	public Date getTicketPayDate() {
		return ticketPayDate;
	}

	public void setTicketPayDate(Date ticketPayDate) {
		this.ticketPayDate = ticketPayDate;
	}

	public String getTicketPayOk() {
		return ticketPayOk;
	}

	public void setTicketPayOk(String ticketPayOk) {
		this.ticketPayOk = ticketPayOk;
	}

	public String getTicketCd() {
		return ticketCd;
	}

	public void setTicketCd(String ticketCd) {
		this.ticketCd = ticketCd;
	}

}
