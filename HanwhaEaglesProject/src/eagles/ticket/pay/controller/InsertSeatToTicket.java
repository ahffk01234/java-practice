package eagles.ticket.pay.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.ticket.pay.service.ITicketPayService;
import eagles.ticket.pay.service.TicketPayServiceImpl;
import eagles.ticket.pay.vo.TicketPayVO;

/*
 * 좌석 및 수량 선택 후 insert 처리할 서블릿
 */
@WebServlet("/InsertSeatToTicket")
public class InsertSeatToTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertSeatToTicket() {
        super();
    }
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memId = req.getParameter("memId");
		String ticketAdult = req.getParameter("ticketAdult");
		String ticketStudent = req.getParameter("ticketStudent");
		String ticketChild = req.getParameter("ticketChild");
		
		ITicketPayService ticketpayService = TicketPayServiceImpl.getInstance();
		
//		TicketPayVO ticketPayVO = ticketpayService.
		
		
	}
}
