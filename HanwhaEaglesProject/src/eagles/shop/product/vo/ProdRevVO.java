package eagles.shop.product.vo;


import java.util.Date;

public class ProdRevVO {

	String prodRevCd;
	Date prodRevDate;
	String prodRevContent;
	String prodRevScore;
	String memId;
	String prodCd;
	
	public ProdRevVO(){
		
	}
	
	
	
	
	public ProdRevVO(String prodRevContent, String prodRevScore, String memId, String prodCd) {
		super();
		this.prodRevContent = prodRevContent;
		this.prodRevScore = prodRevScore;
		this.memId = memId;
		this.prodCd = prodCd;
	}




	public ProdRevVO(String prodRevCd, Date prodRevDate, String prodRevContent, String prodRevScore, String memId) {
	    this.prodRevCd = prodRevCd;
	    this.prodRevDate = prodRevDate;
	    this.prodRevContent = prodRevContent;
	    this.prodRevScore = prodRevScore;
	    this.memId = memId;
	}
	
	
	public ProdRevVO(String prodRevCd, Date prodRevDate, String prodRevContent, String prodRevScore,
			String memId, String prodCd) {
		super();
		this.prodRevCd = prodRevCd;
		this.prodRevDate = prodRevDate;
		this.prodRevContent = prodRevContent;
		this.prodRevScore = prodRevScore;
		this.memId = memId;
		this.prodCd = prodCd;
	}



	public String getProdRevCd() {
		return prodRevCd;
	}



	public void setProdRevCd(String prodRevCd) {
		this.prodRevCd = prodRevCd;
	}



	public Date getProdRevDate() {
		return prodRevDate;
	}



	public void setProdRevDate(Date prodRevDate) {
		this.prodRevDate = prodRevDate;
	}



	public String getProdRevContent() {
		return prodRevContent;
	}



	public void setProdRevContent(String prodRevContent) {
		this.prodRevContent = prodRevContent;
	}



	public String getProdRevScore() {
		return prodRevScore;
	}



	public void setProdRevScore(String prodRevScore) {
		this.prodRevScore = prodRevScore;
	}



	public String getMemId() {
		return memId;
	}



	public void setMemId(String memId) {
		this.memId = memId;
	}



	public String getProdCd() {
		return prodCd;
	}



	public void setProdCd(String prodCd) {
		this.prodCd = prodCd;
	}
	
	
	
	
}
