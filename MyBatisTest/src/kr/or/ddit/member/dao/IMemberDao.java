package kr.or.ddit.member.dao;

import java.util.List;

import kr.or.ddit.member.vo.MemberVO;

/*
 	실제 DB에 연결해서 SQL문을 수행하여 결과를 서비스에 전달해주는
 	DAO를 위한 인터페이스
 */
public interface IMemberDao {
	
	/*
	  MemberVO에 담긴 데이터를 DB에 인서트 하기 위한 메서드
	  mv DB에 인서트할 데이터를 담고 있는 MemberVO객체
	  DB 작업이 성공하면 1, 실패하면 0을 리턴함
	 */
	public int insertMember(MemberVO mv);
	
	/*
	 	주어진 회원 ID를 이용하여 회원정보가 존재하는지 여부를 체크하기 위한 메서드
	 	memId 회원정보존재 여부 체크용 회원ID
	 	해당 회원정보가 존재하면 true, 존재하지 않으면 false 리턴함
	 */
	public boolean checkMember(String memId);

	/*
	 	DB에 존재하는 모든 회원정보를 가져와 List에 담아서 반환하는 메서드
	 	모든 회원정보를 담은 List객체
	 */
	
	public List<MemberVO> getAllMember(); 
	
	
	/*
	 	MemberVO에 담긴 데이터를 DB에 업데이트 하기 위한 메서드
	 	mv DB에 업데이트할 데이터를 담고 있는 MemberVO객체
	 	DB 작업이 성공하면 1, 실패하면 0을 리턴함
	 */
	public int updateMember(MemberVO mv);
	
	/*
	 	주어진 회원ID에 해당하는 회원정보를 삭제하기 위한 메서드
	 	memId 삭제할 회원 ID
	 	DB작업이 성공하면 1, 실패하면 0 리턴함
	 */
	public int deleteMember(String memId);
	
	/*
 	회원정보를 검색하기 위한 메서드
 	검색할 회원 정보를 담은 MemberVO객체
 	검색된 회원정보를 담은 리스트 객체
	 */
	public List<MemberVO> searchMember(MemberVO mv);
}
