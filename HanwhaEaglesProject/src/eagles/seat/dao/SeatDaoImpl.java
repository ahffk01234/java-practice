package eagles.seat.dao;

import java.util.List;

import eagles.seat.vo.SeatVO;

public class SeatDaoImpl extends MyBatisDao implements ISeatDao{
	
	private static ISeatDao seatDao;
	
	private SeatDaoImpl() {}
	
	public static ISeatDao getInstance() {
		if(seatDao == null) {
			seatDao = new SeatDaoImpl();
		}
		return seatDao;
	}
	
	@Override
	public List<SeatVO> showSeat(String seatCode) {
		List<SeatVO> seatList = selectList("seat.showAllSeat", seatCode);
		return seatList;
	}

	@Override
	public SeatVO viewSeat(String seatCode) {
		SeatVO seatVo = selectOne("seat.showAllSeat", seatCode);
		return seatVo;
	}

	@Override
	public int insertSeat(SeatVO sv) {
		int cnt = insert("seat.insertSeat", sv);
		return cnt;
	}

	@Override
	public SeatVO getSeat(String ticketSeat) {
		SeatVO sv = selectOne("seat.getSeat", ticketSeat);
		return sv;
	}

	@Override
	public int chgRes(String seatCd) {
		int cnt = update("seat.chgRes", seatCd);
		return cnt;
	}

	@Override
	public int deleteSeat(SeatVO sv) {
		int cnt = delete("seat.deleteSeat", sv);
		return cnt;
	}

}
