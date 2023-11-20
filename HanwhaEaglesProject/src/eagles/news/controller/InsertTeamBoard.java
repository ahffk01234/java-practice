package eagles.news.controller;

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
import javax.servlet.http.Part;

import eagles.news.service.ITeamBoardService;
import eagles.news.service.TeamBoardServiceImpl;
import eagles.news.vo.TeamBoardVO;

@MultipartConfig(fileSizeThreshold = -1, // 크기 제한 없음
maxFileSize = -1,      // 크기 제한 없음
maxRequestSize = -1)   // 크기 제한 없음
@WebServlet("/InsertTeamBoard.do")
public class InsertTeamBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertTeamBoard() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher disp = request.getRequestDispatcher("views/teamBoard/InsertTeamBoard.jsp");
		disp.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String teamboardTitle = request.getParameter("tbTitle");
		String teamboardContent = request.getParameter("tbContent");
		String teamboardFix = request.getParameter("isPinned");
		String memId = "MANAGER";
		
		// 파일 업로드 처리
        Part imagePart = request.getPart("imageFile"); // 수정된 부분
        
        String submittedFileName = imagePart.getSubmittedFileName();
        System.out.println("전송파일명: " + submittedFileName);
        
        String fileName = "";

        
        if(submittedFileName != null) {

        
        fileName = UUID.randomUUID().toString().replace("-", "")  + ".jpg";;

        // 업로드할 디렉토리 경로
        String uploadPath = getServletContext().getRealPath("/") + "/img/teamBoardUploadImg";
        String filePath = uploadPath + File.separator + fileName;
        
        // 폴더 생성
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        // 파일 업로드
        imagePart.write(filePath);
        
        }
        
		
		ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();
		TeamBoardVO tbv = new TeamBoardVO(teamboardTitle, teamboardContent, teamboardFix, memId);
		tbv.setTeamboardImg(fileName);
		
		int cnt = tbService.insertBoard(tbv);
		System.out.println(" cnt >> " + cnt);
		
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
