package eagles.seat.service;

import java.util.List;

import eagles.seat.dao.ISeatDao;
import eagles.seat.dao.SeatDaoImpl;
import eagles.seat.vo.SeatVO;

public class SeatServiceImpl implements ISeatService{
	
	private ISeatDao seatDao;
	
	private static ISeatService seatService;
	public SeatServiceImpl() {
		seatDao = SeatDaoImpl.getInstance();
	}
	
	public static ISeatService getInstance() {
		if(seatService == null) {
			seatService = new SeatServiceImpl();
		}
		return seatService;
	}

	@Override
	public SeatVO getSeatList(String seatCode) {
		return seatDao.viewSeat(seatCode);
	}

	@Override
	public List<SeatVO> getAllSeatList(String seatCode) {
		return seatDao.showSeat(seatCode);
	}

	@Override
	public int insertSeat(SeatVO sv) {
		return seatDao.insertSeat(sv);
	}

	@Override
	public SeatVO getSeat(String ticketSeat) {
		return seatDao.getSeat(ticketSeat);
	}

	@Override
	public int chgRes(String seatCd) {
		return seatDao.chgRes(seatCd);
	}

	@Override
	public int deleteSeat(SeatVO sv) {
		return seatDao.deleteSeat(sv);
	}

}
