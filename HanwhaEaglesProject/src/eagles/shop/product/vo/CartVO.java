package eagles.shop.product.vo;

import java.util.Date;

public class CartVO {

	private String cartCd;
	private String cartPrice;
	private String cartMethod;
	private Date cartDate;
	private String cartPay;
	private String memId;
	
	public CartVO() {
		
	}

	public CartVO(String cartCd, String cartPrice, String cartMethod, Date cartDate, String cartPay, String memId) {
		super();
		this.cartCd = cartCd;
		this.cartPrice = cartPrice;
		this.cartMethod = cartMethod;
		this.cartDate = cartDate;
		this.cartPay = cartPay;
		this.memId = memId;
	}

	public String getCartCd() {
		return cartCd;
	}

	public void setCartCd(String cartCd) {
		this.cartCd = cartCd;
	}

	public String getCartPrice() {
		return cartPrice;
	}

	public void setCartPrice(String cartPrice) {
		this.cartPrice = cartPrice;
	}

	public String getCartMethod() {
		return cartMethod;
	}

	public void setCartMethod(String cartMethod) {
		this.cartMethod = cartMethod;
	}

	public Date getCartDate() {
		return cartDate;
	}

	public void setCartDate(Date cartDate) {
		this.cartDate = cartDate;
	}

	public String getCartPay() {
		return cartPay;
	}

	public void setCartPay(String cartPay) {
		this.cartPay = cartPay;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "CartVO [cartCd=" + cartCd + ", cartPrice=" + cartPrice + ", cartMethod=" + cartMethod + ", cartDate="
				+ cartDate + ", cartPay=" + cartPay + ", MemId=" + memId + "]";
	}

	
	
	
	
	
	
	
	
	
}
