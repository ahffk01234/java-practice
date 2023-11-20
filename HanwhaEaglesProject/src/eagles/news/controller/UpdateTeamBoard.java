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
@WebServlet("/UpdateTeamBoard.do")
public class UpdateTeamBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateTeamBoard() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String teamboardCd = request.getParameter("teamboardCd");

		System.out.println("넘어 온 게시물 번호 >> " + teamboardCd);

		ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();
		TeamBoardVO tbv = tbService.getBoard(teamboardCd);

		request.setAttribute("tbv", tbv);

		RequestDispatcher rd = request.getRequestDispatcher("/views/teamBoard/updateTeamBoard.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
        String existingImg = request.getParameter("existingImg");
		String teamboardCd = request.getParameter("tbCode");
		String teamboardTitle = request.getParameter("tbTitle");
		String teamboardContent = request.getParameter("tbContent");
		String teamboardFix = request.getParameter("isPinned");
		String memId = "MANAGER";
		
		// 파일 업로드 처리
        Part imagePart = request.getPart("imageFile"); // 수정된 부분
        String fileName;
        if (imagePart != null && imagePart.getSize() > 0) {
            fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
            
            // 업로드할 디렉토리 경로
            String uploadPath = "img/teamBoardUploadImg";
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

		ITeamBoardService tbService = TeamBoardServiceImpl.getInstance();
		TeamBoardVO tbv = new TeamBoardVO(teamboardCd, teamboardTitle, teamboardContent, teamboardFix, memId, fileName);

		int cnt = tbService.updateBoard(tbv);
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
