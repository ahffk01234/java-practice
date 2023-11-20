package eagles.gall.vo;

import java.util.Date;

public class GallVO {

	private String gallCd;
	private String gallTitle;
	private String gallLike;
	private Date gallDate;
	private String gallImg;
	private String memId;
	
	public GallVO() {
		
	}

	
	
	






	public GallVO(String gallCd, String gallTitle, String gallLike, Date gallDate, String gallImg, String memId) {
		super();
		this.gallCd = gallCd;
		this.gallTitle = gallTitle;
		this.gallLike = gallLike;
		this.gallDate = gallDate;
		this.gallImg = gallImg;
		this.memId = memId;
	}










	public String getGallCd() {
		return gallCd;
	}










	public void setGallCd(String gallCd) {
		this.gallCd = gallCd;
	}










	public String getGallTitle() {
		return gallTitle;
	}










	public void setGallTitle(String gallTitle) {
		this.gallTitle = gallTitle;
	}










	public String getGallLike() {
		return gallLike;
	}










	public void setGallLike(String gallLike) {
		this.gallLike = gallLike;
	}










	public Date getGallDate() {
		return gallDate;
	}










	public void setGallDate(Date gallDate) {
		this.gallDate = gallDate;
	}










	public String getGallImg() {
		return gallImg;
	}










	public void setGallImg(String gallImg) {
		this.gallImg = gallImg;
	}










	public String getMemId() {
		return memId;
	}










	public void setMemId(String memId) {
		this.memId = memId;
	}










	
	
	
	
	
	
}
