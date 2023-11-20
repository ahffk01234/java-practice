package eagles.coupon.vo;

import java.util.Date;

public class CouponVO {
	private String couponCd;
	private Date couponDate;
	private String couponUse;
	private String gameCd;
	private String memId;
	
	public CouponVO() {}

	public CouponVO(String couponCd, Date couponDate, String couponUse, String gameCd, String memId) {
		super();
		this.couponCd = couponCd;
		this.couponDate = couponDate;
		this.couponUse = couponUse;
		this.gameCd = gameCd;
		this.memId = memId;
	}

	public String getCouponCd() {
		return couponCd;
	}

	public void setCouponCd(String couponCd) {
		this.couponCd = couponCd;
	}

	public Date getCouponDate() {
		return couponDate;
	}

	public void setCouponDate(Date couponDate) {
		this.couponDate = couponDate;
	}

	public String getCouponUse() {
		return couponUse;
	}

	public void setCouponUse(String couponUse) {
		this.couponUse = couponUse;
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
	
	
	
}   
    