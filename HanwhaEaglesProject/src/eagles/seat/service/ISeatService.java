package eagles.seat.service;

import java.util.List;

import eagles.seat.vo.SeatVO;

public interface ISeatService {
	
	public SeatVO getSeatList(String seatCode);
	
	public List<SeatVO> getAllSeatList(String seatCode);
	
	// seat 테이블에 insert할 메서드
	public int insertSeat(SeatVO sv);
	
	// ticket_seat 컬럼으로 ticket_cd 조회할 메서드
	public SeatVO getSeat(String ticketSeat);
	
	// seat_res를 0으로 update하는 메서드
	public int chgRes(String seatCd);

	public int deleteSeat(SeatVO sv);

}
