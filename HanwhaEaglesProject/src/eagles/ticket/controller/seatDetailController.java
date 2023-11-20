package eagles.ticket.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;
import java.util.StringJoiner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eagles.seat.service.ISeatService;
import eagles.seat.service.SeatServiceImpl;
import eagles.seat.vo.SeatVO;
import eagles.ticket.pay.service.ITicketPayService;
import eagles.ticket.pay.service.TicketPayServiceImpl;
import eagles.ticket.pay.vo.TicketPayVO;
import eagles.ticket.service.IPayTicketService;
import eagles.ticket.service.ITicketService;
import eagles.ticket.service.PayTicketServiceImpl;
import eagles.ticket.service.TicketServiceImpl;
import eagles.ticket.vo.TicketVO;

@WebServlet(value = "/seatdetail.do")
public class seatDetailController extends HttpServlet {


	private String gameCd;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String gameCd = req.getParameter("gameCd");
		System.out.println("123게임코드 파라미터 : " + gameCd);
		
		req.setAttribute("gameCd", gameCd);
		
		this.gameCd = gameCd;
		
		IPayTicketService payTicketService = PayTicketServiceImpl.getInstance();
		
		List<eagles.ticket.vo.SeatVO> seatList = payTicketService.seatList(gameCd);
		
		for(eagles.ticket.vo.SeatVO sv : seatList) {
			System.out.println("예매된 좌석들" + sv.getSeatCd());
		}
		
		req.setAttribute("seatList", seatList);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/ticketviews/seatdetail.jsp");
		rd.forward(req, resp);


	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("456게임코드 파라미터 : " + gameCd);
		String[] selectedSeatsArray = req.getParameterValues("selectedSeats");

		// 선택한 좌석 값을 자유롭게 활용할 수 있습니다.
		for (String selectedSeat : selectedSeatsArray) {
			System.out.println("선택좌석: " + selectedSeat);
			// 여기에서 선택한 좌석 값을 원하는 로직으로 처리합니다.
		}

		HttpSession session = req.getSession();
		String memId = (String) session.getAttribute("LogMemId");

		StringJoiner ticketSeatJoin = new StringJoiner("/"); // 구분자를 지정해줍니다. 여기서는 ", "를 사용하였습니다.

		for (String selectedSeat : selectedSeatsArray) {
			ticketSeatJoin.add(selectedSeat); // 각 값들을 joiner에 추가합니다.
		}

		String ticketSeat = ticketSeatJoin.toString(); // 합쳐진 문자열을 얻습니다.
		System.out.println("선택한 좌석 전체 : " + ticketSeat); // 결과를 출력합니다.
		ITicketService ticketService = TicketServiceImpl.getInstance();


		TicketVO tv = new TicketVO(memId, ticketSeat);
		System.out.println("티켓 좌석 : " + tv.getTicketSeat());
		System.out.println("회원Id : " + memId);


		int cnt = ticketService.insertTicket(tv);

		// ticket 테이블 insert 성공 시 seat 테이블에 insert할 객체 생성하고 넘겨주기
		// seat 테이블에 insert 할 때 'ticketSeat'을 split한 갯수 만큼 insert
		if (cnt > 0) {
			HttpSession httpSession = req.getSession();
			httpSession.setAttribute("ticketSeat", ticketSeat);

			 
			 ISeatService seatService = SeatServiceImpl.getInstance();
			 
			 // seat 테이블에 insert할 values( seat_cd, game_cd, seat_res, mem_id, ticket_cd)
			 String[] ticket= ticketSeat.split("/");

			 for(int i = 0; i < ticket.length; i++) {
				 System.out.println(ticket[i]);
			 }
			 
			 memId = (String)session.getAttribute("LogMemId");
			 System.out.println("회원 ID : " + memId);
			 
			 ITicketService ticketService1 = TicketServiceImpl.getInstance();
			 
			 System.out.println("게임 코드 : " + gameCd);
			 
			 tv = ticketService1.getTicketCd(ticketSeat);
			 
			 String ticketCd =  tv.getTicketCd();
			 System.out.println("티켓 코드 : " + ticketCd);
			 
			 session.setAttribute("ticketCd", ticketCd);
			 req.setAttribute("ticketCd", ticketCd);
			 
			 System.out.println("좌석 갯수 : " +ticket.length);
			 System.out.println(memId);
			 
			 for(int i = 0; i < ticket.length; i++) {
				 
				 SeatVO seatVO = new SeatVO(ticket[i].trim(),gameCd, "0", memId, ticketCd);
			 
				 int seatCnt = seatService.insertSeat(seatVO);
			 
				 if(seatCnt > 0) {
					 System.out.println((i+1) + "번째 insert 성공!!!");
					 
				 }
				 else {
					 System.out.println((i+1) + "번째 insert 실패!!!");
				 }
				 
			 }
		} else {
			System.out.println("ticket 테이블에 insert 중 에러 발생!");
		}

	}
}
