package eagles.member.vo;

import java.util.Date;

public class FindMemberVO {
	
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
	public FindMemberVO(){}
	
	// 비밀번호 찾기용
	public FindMemberVO(String memId, String memName, String memMail) {
		super();
		this.memId = memId;
		this.memName = memName;
		this.memMail = memMail;
	}

	// 전체 출력용
	public FindMemberVO(String memId, String memPw, String memName, String memNickname, String memTel, String memBirth,
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
	
}
