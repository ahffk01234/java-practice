package eagles.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.BoardVO;
import eagles.member.service.IMemberService;
import eagles.member.service.MemberServiceImpl;

@WebServlet("/UploadBlackList.do")
public class UploadBlackList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UploadBlackList() {
        super();
    }

    // 블랙회원으로 만드는 서블릿. 
    // 해당 회원을 신고 목록에서 지우고 멤버 테이블의 블랙 여부 컬럼 업데이트 해줌.
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 게시번호
		String boardCd = request.getParameter("boardCd");
		IBoardService bdService = BoardServiceImpl.getInstance();
		
		BoardVO bv = bdService.getBoard(boardCd);
		// 신고 게시글 작성자
		String memId = bv.getMemId();
		
		IMemberService memService = MemberServiceImpl.getInstance();
		int cntt = memService.helloBlack(memId);
		int cnt = bdService.deleteReport(boardCd);
		int cnttt = bdService.deleteBoard(boardCd);
		System.out.println("cnt >> " + cnt);
		System.out.println("cntt >> " + cntt);
		System.out.println("cnttt >> " + cnttt);
		
		String result;
		if(cnt > 0 && cntt > 0 && cnttt > 0) {
			result = "success";
        } else {
            result = "fail";
        }

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(result);
	}

}
