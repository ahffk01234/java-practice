package eagles.member.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;
import eagles.member.vo.FindMemberVO;

@WebServlet("/FindPw.do")
public class FindPw extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FindPw() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("views/login/findPw.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memMail = request.getParameter("memMail");
		
		IMemberService memService = MemberServiceImpl.getInstance();
		
		FindMemberVO mv = new FindMemberVO(memId, memName, memMail);
		
		mv = memService.findPwMember(mv);
		
		
		
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
		 Properties props = new Properties();
	        props.put("mail.smtp.host", "smtp.gmail.com");
	        props.put("mail.smtp.port", "587");
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.starttls.enable", "true");
	        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
	        
	        Session session = Session.getInstance(props, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication("lcbean1008@gmail.com", "drhuwdwzktjgifcs"); // 보내는 사람 주소
	            }
	        });
	        
	        String title = "한화이글스 비밀번호 찾기 결과입니다."; // 제목
	        String content = "<h3>안녕하세요 ! 한화이글스입니다.</h3><p>비밀번호 찾기 결과를 알려드립니다. <br><br> 비밀번호는 " + mv.getMemPw() + " 입니다. <br><br>6개월 이상 된 비밀번호는 보안에 취약할 수 있습니다.<br>주기적인 비밀번호 변경으로 나만의 계정을 지켜주세요 !<br><br><br>감사합니다.</p>"; // 내용

	        
	        Message message = new MimeMessage(session);
	        try {
	            message.setFrom(new InternetAddress("lcbean1008@gmail.com", "한화이글스", "utf-8")); // 보내는 메일주소, 보내는 사람 이름
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(memMail));
	            message.setSubject(title);
	            message.setContent(content, "text/html; charset=utf-8");

	            Transport.send(message);
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
		System.out.println("db 조회 결과 >> " + mv.getMemPw());
	
	if(mv.getMemPw() != null) {
		 response.setStatus(HttpServletResponse.SC_OK);
	        response.getWriter().write("{\"result\": \"success\", \"memPw\": \"" + mv.getMemPw() + "\", \"memRegDate\": \"" + mv.getMemRegDate() + "\"}"); 
	    } else {
	    	System.out.println(mv.getMemId());
	        response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
	        response.getWriter().write("{\"result\": \"fail\"}");  
	    }
		}
		
	

	}
