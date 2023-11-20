package eagles.shop.product.vo;


public class ProdVO {

	private String prodCd;
    private String prodName;
    private String prodPrice;
    private String prodStock;
    private String prodImg;
    private String prodContent;
    private String lProdCd;
    private String prodImg2;
    
    
    public ProdVO(String prodCd) {
        this.prodCd = prodCd;
    }

    public ProdVO() {
		// TODO Auto-generated constructor stub
	}
    
	public ProdVO(String prodCd, String prodName, String prodPrice, String prodStock, String prodImg,
			String prodContent, String lProdCd, String prodImg2) {
		super();
		this.prodCd = prodCd;
		this.prodName = prodName;
		this.prodPrice = prodPrice;
		this.prodStock = prodStock;
		this.prodImg = prodImg;
		this.prodContent = prodContent;
		this.lProdCd = lProdCd;
		this.prodImg2 = prodImg2;
	}
	
	
	public String getProdCd() {
		return prodCd;
	}
	public void setProdCd(String prodCd) {
		this.prodCd = prodCd;
	}
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(String prodPrice) {
		this.prodPrice = prodPrice;
	}
	public String getProdStock() {
		return prodStock;
	}
	public void setProdStock(String prodStock) {
		this.prodStock = prodStock;
	}
	public String getProdImg() {
		return prodImg;
	}
	public void setProdImg(String prodImg) {
		this.prodImg = prodImg;
	}
	public String getProdContent() {
		return prodContent;
	}
	public void setProdContent(String prodContent) {
		this.prodContent = prodContent;
	}
	public String getlProdCd() {
		return lProdCd;
	}
	public void setlProdCd(String lProdCd) {
		this.lProdCd = lProdCd;
	}
	public String getProdImg2() {
		return prodImg2;
	}
	public void setProdImg2(String prodImg2) {
		this.prodImg2 = prodImg2;
	}

	@Override
	public String toString() {
		return "ProdVO [prodCd=" + prodCd + ", prodName=" + prodName + ", prodPrice=" + prodPrice + ", prodStock="
				+ prodStock + ", prodImg=" + prodImg + ", prodContent=" + prodContent + ", lProdCd=" + lProdCd
				+ ", prodImg2=" + prodImg2 + "]";
	}
	
	
	
	
	
	
}
