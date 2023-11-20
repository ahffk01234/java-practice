package eagles.member.vo;

import java.util.Date;

public class MemberVO {
	private int rnum;	//페이징의 글순서
	private String memId;		// 아이디
	private String memPw;		// 비밀번호
	private String memName;		// 이름
	private String memNickname;	// 별명
	private String memTel;		// 전화번호
	private String memBirth;		// 생일
	private String memMail;		// 메일주소
	private String memAddr;		// 주소
	private String memBlack;	// 블랙리스트 여부
	private String memRegDate;	// 회원가입일자

	// 디폴트
	public MemberVO(){}
	
	// 아이디 찾기용
	public MemberVO(String memName, String memBirth, String memMail) {
		super();
		this.memName = memName;
		this.memBirth = memBirth;
		this.memMail = memMail;
	}

	// 회원가입용
	public MemberVO(String memId, String memPw, String memName, String memNickname, String memTel, String memBirth,
			String memMail, String memAddr) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memNickname = memNickname;
		this.memTel = memTel;
		this.memBirth = memBirth;
		this.memMail = memMail;
		this.memAddr = memAddr;
	}



	// 전체 출력용
	public MemberVO(String memId, String memPw, String memName, String memNickname, String memTel, String memBirth,
			String memMail, String memAddr, String memBlack, String memRegDate) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memNickname = memNickname;
		this.memTel = memTel;
		this.memBirth = memBirth;
		this.memMail = memMail;
		this.memAddr = memAddr;
		this.memBlack = memBlack;
		this.memRegDate = memRegDate;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPw() {
		return memPw;
	}


	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getMemNickname() {
		return memNickname;
	}


	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}


	public String getMemTel() {
		return memTel;
	}


	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}


	public String getMemBirth() {
		return memBirth;
	}


	public void setMemBirth(String memBirth) {
		this.memBirth = memBirth;
	}


	public String getMemMail() {
		return memMail;
	}


	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}


	public String getMemAddr() {
		return memAddr;
	}


	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}


	public String getMemBlack() {
		return memBlack;
	}


	public void setMemBlack(String memBlack) {
		this.memBlack = memBlack;
	}


	public String getMemRegDate() { 
		return memRegDate;
	}


	public void setMemRegDate(String memRegDate) {
		this.memRegDate = memRegDate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	@Override
	public String toString() {
		return "MemberVO [rnum=" + rnum + ", memId=" + memId + ", memPw=" + memPw + ", memName=" + memName
				+ ", memNickname=" + memNickname + ", memTel=" + memTel + ", memBirth=" + memBirth + ", memMail="
				+ memMail + ", memAddr=" + memAddr + ", memBlack=" + memBlack + ", memRegDate=" + memRegDate + "]";
	}
	
	
	
}
