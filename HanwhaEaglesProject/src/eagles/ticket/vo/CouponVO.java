package eagles.ticket.vo;

public class CouponVO {

	private String couponCd;
	private String memId;
	
	public CouponVO() {}

	public CouponVO(String couponCd, String memId) {
		super();
		this.couponCd = couponCd;
		this.memId = memId;
	}

	public String getCouponCd() {
		return couponCd;
	}

	public void setCouponCd(String couponCd) {
		this.couponCd = couponCd;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}
	
	
	
}
