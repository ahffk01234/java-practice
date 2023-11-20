package eagles.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import eagles.board.service.BoardServiceImpl;
import eagles.board.service.IBoardService;
import eagles.board.vo.BoardVO;

@MultipartConfig(fileSizeThreshold = -1, // 크기 제한 없음
maxFileSize = -1,      // 크기 제한 없음
maxRequestSize = -1)   // 크기 제한 없음
@WebServlet("/UpdateBoard.do")
public class UpdateBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateBoard() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String boardCd = request.getParameter("boardCd");
		
		System.out.println("넘어 온 게시물 번호" + boardCd);
		
		IBoardService bdService = BoardServiceImpl.getInstance();
		BoardVO bv = bdService.getBoard(boardCd);
		
		request.setAttribute("bv", bv);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/board/updateBoard.jsp");
		rd.forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        String logMemId = (String) session.getAttribute("LogMemId");

        String existingImg = request.getParameter("existingImg");
        String boardCd = request.getParameter("bdCode");
        String boardTitle = request.getParameter("title");
        String boardContent = request.getParameter("content");
        String memId = logMemId;

        // 파일 업로드 처리
        Part imagePart = request.getPart("imageFile"); // 수정된 부분
        String fileName;
        if (imagePart != null && imagePart.getSize() > 0) {
            fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
            
            // 업로드할 디렉토리 경로
            String uploadPath = "img/boardUploadImg";
            String filePath = getServletContext().getRealPath("/") + uploadPath + File.separator + fileName;
            
            // 폴더 생성
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            // 파일 업로드
            imagePart.write(filePath);
        } else {
            fileName = existingImg; // 기존의 파일명 사용
        }

        IBoardService bdService = BoardServiceImpl.getInstance();
        BoardVO bv = new BoardVO(boardCd, boardTitle, boardContent, memId, fileName);
//        bv.setBoardImg(fileName);
        
        int cnt = bdService.updateBoard(bv);
        
        String result;
        if (cnt > 0) {
            result = "success";
        } else {
            result = "fail";
        }

        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(result);
	}

}
