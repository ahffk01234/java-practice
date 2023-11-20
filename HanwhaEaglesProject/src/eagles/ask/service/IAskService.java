package eagles.ask.service;

import java.util.List;

import eagles.ask.vo.AskVO;

public interface IAskService {
	
	/**
	 * 전체문의사항을 조회하는 메서드
	 * @param 파라미터없이 전체값사용
	 * @return
	 */
	public List<AskVO> getAskAll ();


	/**
	 * askAnswer 값이 널이냐 아니냐에 따른 답변여부를 통해
	 * 답변이 안된값 or 답변된 값을 불러오는 메서드
	 * @return
	 */
	public List<AskVO> getAnswerYet();
	
	
	/**
	 * MemId값으로 조회하는 메서드 (답변, 미답변 안가림)
	 * 관리자는 검색할 때 사용, 회원은 자신 고정에 사용
	 * @param memId
	 * @return
	 */
	public List<AskVO> getAskByMem(String memId);
	
	
	/**
	 * 문의아이디를 통해 글을읽 메서드.
	 * @param askCd
	 * @return
	 */
	public List<AskVO> readAsk(String askCd);
	
	
	/**
	 * 문의사항 등록하기
	 * @param av
	 * @return
	 */
	public int insertAsk(AskVO av);
	

	/**
	 * 문의삭제
	 * @param askCd
	 * @return
	 */
	public int deleteAsk(String askCd);
	
	
	/**
	 * 회원 : 자신의 문의 수정
	 * 관리자 : 댓글작성, 댓글수정
	 * 동작 : 회원댓글 답변완료처리
	 * @param av
	 * @return
	 */
	public int updateAsk(AskVO av);

}
