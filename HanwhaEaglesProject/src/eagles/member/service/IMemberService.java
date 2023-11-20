package eagles.member.service;

import java.util.List;
import java.util.Map;

import eagles.member.vo.FindMemberVO;
import eagles.member.vo.MemberVO;

public interface IMemberService {

	/**
	 * 회원가입 메서드
	 * 
	 * @param mv
	 * @return 성공 여부 int값
	 */
	public int insertMember(MemberVO mv);

	/**
	 * 아이디 중복체크
	 * 
	 * @param memId
	 * @return 해당 회원정보가 존재하면 true, 존재하지 않으면 false를 리턴함.
	 */
	public boolean checkMember(String memId);

	/**
	 * 닉네임 중복체크
	 * 
	 * @param memNickname
	 * @return 해당 닉네임이 존재하면 true, 존재하지 않으면 false를 리턴함.
	 */
	public boolean checkNickName(String memNickname);

	/**
	 * 블랙리스트 멤버 조회
	 * 
	 * @param memBlack 블랙리스트 여부(0 = 일반회원, 1 = 블랙리스트)
	 * 
	 */
	public List<MemberVO> getBlackMember(Map<String,Object> map);

	/**
	 * 전체 멤버 조회
	 * 
	 * @return 전체 멤버
	 */
	public List<MemberVO> getAllMember();

	/**
	 * 회원정보 수정
	 * 
	 * @param mv DB에 업데이트 할 데이터를 담고있는 MemberVO객체
	 * @return DB 작업이 성공하면 1, 실패하면 0 리턴함
	 */
	public int updateMember(MemberVO mv);

	/**
	 * 회원 탈퇴
	 * 
	 * @param memId 삭제할 회원ID
	 * @return DB 작업이 성공하면 1, 실패하면 0 리턴함
	 */
	public int deleteMember(String memId);

	/**
	 * 주어진 회원 ID를 이용하여 해당 회원정보를 가져오기 위한 메서드
	 * 
	 * @param memId 회원정보를 가져올 회원 ID
	 * @return 가져온 회원정보를 담은 MemberVO 객체 리턴함.
	 */
	public MemberVO getMember(String memId);

	/**
	 * 아이디 찾기
	 * 
	 * @param mv 검색할 회원정보를 담은 MemberVO객체
	 * @return 검색된 회원정보를 담은 리스트 객체
	 */
	public MemberVO findIdMember(MemberVO mv);
	
	/**
	 * 아이디 찾기
	 * 
	 * @param mv 검색할 회원정보를 담은 MemberVO객체
	 * @return 검색된 회원정보를 담은 리스트 객체
	 */
	public FindMemberVO findPwMember(FindMemberVO mv);

	/**
	 * 로그인
	 * @param map
	 * @return
	 */
	public String loginChk(Map<String, Object> map);
	
	
	/**
	 * 블랙리스트 멤버 해제
	 * @param memBlack
	 * @return
	 */
	public int updateBlack(String memBlack);

	//블랙리스트 전체 인원수
	int getBlackMemberTotal();
	
	public int helloBlack(String memId);
}

	
