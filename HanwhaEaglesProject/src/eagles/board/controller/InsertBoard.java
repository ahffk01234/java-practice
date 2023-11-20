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
@WebServlet("/InsertBoard.do")
public class InsertBoard extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    public InsertBoard() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher disp = request.getRequestDispatcher("views/board/insertBoard.jsp");
        disp.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String logMemId = (String) session.getAttribute("LogMemId");

        String boardTitle = request.getParameter("bdTitle");
        String boardContent = request.getParameter("bdContent");
        String memId = logMemId;

        // 파일 업로드 처리
        Part imagePart = request.getPart("imageFile"); // 수정된 부분
        
        String submittedFileName = imagePart.getSubmittedFileName();
        System.out.println("전송파일명: " + submittedFileName);
        
        String fileName = "";
        
        if(submittedFileName != null) {
        	
        	fileName = UUID.randomUUID().toString().replace("-", "")  + ".jpg";;
        	
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
        }

        IBoardService bdService = BoardServiceImpl.getInstance();
        BoardVO boardVO = new BoardVO(boardTitle, boardContent, memId);
        boardVO.setBoardImg(fileName);

        int cnt = bdService.insertBoard(boardVO);

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