package eagles.shop.product.vo;

import java.util.Date;

public class MypageProductVO {
	
	String prodName;
	String prodCd;
	int cartDtNum;
	String cartDtSize;
	int prodPrice;
	Date cartDate;
	String memId;
	String cartCd;
	int cartPrice;
	String cartMethod;
	String cartPay;
	int numPrice;
	String startDay;
	String endDay;
	String searchContent;
	int rnum;
	
	public MypageProductVO() {}

	
	public MypageProductVO(String prodName, String prodCd, int cartDtNum, String cartDtSize, int prodPrice, Date cartDate,
			String memId, String cartCd, int cartPrice, String cartMethod, String cartPay, int numPrice, String startDay, String endDay, String searchContent, int rnum) {
		super();
		this.prodName = prodName;
		this.prodCd = prodCd;
		this.cartDtNum = cartDtNum;
		this.cartDtSize = cartDtSize;
		this.prodPrice = prodPrice;
		this.cartDate = cartDate;
		this.memId = memId;
		this.cartCd = cartCd;
		this.cartPrice = cartPrice;
		this.cartMethod = cartMethod;
		this.cartPay = cartPay;
		this.numPrice = numPrice;
		this.startDay = startDay;
		this.endDay = endDay;
		this.searchContent = searchContent;
		this.rnum = rnum;
	}


	public int getRnum() {
		return rnum;
	}


	public void setRnum(int rnum) {
		this.rnum = rnum;
	}


	public String getStartDay() {
		return startDay;
	}


	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}


	public String getEndDay() {
		return endDay;
	}


	public void setEndDay(String endDay) {
		this.endDay = endDay;
	}


	public String getSearchContent() {
		return searchContent;
	}


	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}


	public String getProdName() {
		return prodName;
	}


	public void setProdName(String prodName) {
		this.prodName = prodName;
	}


	public String getProdCd() {
		return prodCd;
	}


	public void setProdCd(String prodCd) {
		this.prodCd = prodCd;
	}


	public int getCartDtNum() {
		return cartDtNum;
	}


	public void setCartDtNum(int cartDtNum) {
		this.cartDtNum = cartDtNum;
	}


	public String getCartDtSize() {
		return cartDtSize;
	}


	public void setCartDtSize(String cartDtSize) {
		this.cartDtSize = cartDtSize;
	}


	public int getProdPrice() {
		return prodPrice;
	}


	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}


	public Date getCartDate() {
		return cartDate;
	}


	public void setCartDate(Date cartDate) {
		this.cartDate = cartDate;
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


	public int getCartPrice() {
		return cartPrice;
	}


	public void setCartPrice(int cartPrice) {
		this.cartPrice = cartPrice;
	}


	public String getCartMethod() {
		return cartMethod;
	}


	public void setCartMethod(String cartMethod) {
		this.cartMethod = cartMethod;
	}


	public String getCartPay() {
		return cartPay;
	}


	public void setCartPay(String cartPay) {
		this.cartPay = cartPay;
	}


	public int getNumPrice() {
		return numPrice;
	}


	public void setNumPrice(int numPrice) {
		this.numPrice = numPrice;
	}


	@Override
	public String toString() {
		return "MypageProductVO [prodName=" + prodName + ", prodCd=" + prodCd + ", cartDtNum=" + cartDtNum
				+ ", cartDtSize=" + cartDtSize + ", prodPrice=" + prodPrice + ", cartDate=" + cartDate + ", memId="
				+ memId + ", cartCd=" + cartCd + ", cartPrice=" + cartPrice + ", cartMethod=" + cartMethod
				+ ", cartPay=" + cartPay + ", numPrice=" + numPrice + ", startDay=" + startDay + ", endDay=" + endDay
				+ ", searchContent=" + searchContent + "]";
	}
	
	
}

	