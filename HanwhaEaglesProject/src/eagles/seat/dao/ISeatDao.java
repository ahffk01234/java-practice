package eagles.seat.dao;

import java.util.List;

import eagles.seat.vo.SeatVO;

public interface ISeatDao {
	
	public List<SeatVO> showSeat(String seatCode);
	
	public SeatVO viewSeat(String seatCode);

	public int insertSeat(SeatVO sv);
	
	public SeatVO getSeat(String ticketSeat);

	public int chgRes(String seatCd);

	public int deleteSeat(SeatVO sv);
}
