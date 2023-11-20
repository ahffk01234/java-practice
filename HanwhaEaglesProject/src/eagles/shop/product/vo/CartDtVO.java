package eagles.shop.product.vo;

public class CartDtVO {

	private String cartCd;
	private String prodCd;
	private String cartDtNum;
	private String cartDtSize;
	private String cartDtOpt;
	private String memId;
	
	public CartDtVO() {
		
	}

	public CartDtVO(String cartCd, String prodCd, String cartDtNum, String cartDtSize, String cartDtOpt, String memId) {
		super();
		this.cartCd = cartCd;
		this.prodCd = prodCd;
		this.cartDtNum = cartDtNum;
		this.cartDtSize = cartDtSize;
		this.cartDtOpt = cartDtOpt;
		this.memId = memId;
	}

	
	
	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getCartCd() {
		return cartCd;
	}

	public void setCartCd(String cartCd) {
		this.cartCd = cartCd;
	}

	public String getProdCd() {
		return prodCd;
	}

	public void setProdCd(String prodCd) {
		this.prodCd = prodCd;
	}

	public String getCartDtNum() {
		return cartDtNum;
	}

	public void setCartDtNum(String cartDtNum) {
		this.cartDtNum = cartDtNum;
	}

	public String getCartDtSize() {
		return cartDtSize;
	}

	public void setCartDtSize(String cartDtSize) {
		this.cartDtSize = cartDtSize;
	}

	public String getCartDtOpt() {
		return cartDtOpt;
	}

	public void setCartDtOpt(String cartDtOpt) {
		this.cartDtOpt = cartDtOpt;
	}

	@Override
	public String toString() {
		return "CartDtVO [cartCd=" + cartCd + ", prodCd=" + prodCd + ", cartDtNum=" + cartDtNum + ", cartDtSize="
				+ cartDtSize + ", cartDtOpt=" + cartDtOpt + "]";
	}
	
	
	
	
}
