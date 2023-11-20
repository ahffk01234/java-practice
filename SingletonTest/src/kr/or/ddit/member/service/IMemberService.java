package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.member.vo.MemberVO;

public interface IMemberService {
	
	/*
	  회원정보를 등록하기 위한 메서드
	  mv 등록할 회원정보를 담고 있는 MemberVO객체
	  등록작업이 성공하면 1, 실패하면 0을 리턴함
	 */
	public int registerMember(MemberVO mv);
	
	/*
	 	주어진 회원 ID를 이용하여 회원정보가 존재하는지 여부를 체크하기 위한 메서드
	 	memId 회원정보존재 여부 체크용 회원ID
	 	해당 회원정보가 존재하면 true, 존재하지 않으면 false 리턴함
	 */
	public boolean checkMember(String memId);

	/*
	 	모든 회원정보를 가져와 List에 담아서 반환하는 메서드
	 	모든 회원정보를 담은 List객체
	 */
	
	public List<MemberVO> getAllMember(); 
	
	
	/*
	 	MemberVO에 담긴 데이터를 DB에 업데이트 하기 위한 메서드
	 	mv 업데이트할 데이터를 담고 있는 MemberVO객체
	 	수정 작업이 성공하면 1, 실패하면 0을 리턴함
	 */
	public int modifyMember(MemberVO mv);
	
	/*
	 	주어진 회원ID에 해당하는 회원정보를 삭제하기 위한 메서드
	 	memId 삭제할 회원 ID
	 	삭제작업이 성공하면 1, 실패하면 0 리턴함
	 */
	public int removeMember(String memId);
	
	public List<MemberVO> searchMember(MemberVO mv);

}
