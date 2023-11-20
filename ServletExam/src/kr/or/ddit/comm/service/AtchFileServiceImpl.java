package kr.or.ddit.comm.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import kr.or.ddit.comm.dao.AtchFileDaoImpl;
import kr.or.ddit.comm.dao.IAtchFileDao;
import kr.or.ddit.comm.vo.AtchFileVO;

public class AtchFileServiceImpl implements IAtchFileService{
	
	private IAtchFileDao atchFileDao;
	
	private static IAtchFileService fileService;
		
	public AtchFileServiceImpl() {
		atchFileDao = AtchFileDaoImpl.getInstance();
	}
		
	public static IAtchFileService getInstance() {
		if(fileService == null) {
			fileService = new AtchFileServiceImpl();
		}
		return fileService;
	}
	
	
	
	@Override
	public AtchFileVO saveAtchFileList(HttpServletRequest req) {

		String uploadPath = "d:/D_Other/UPLOAD_DIR";
		File uploadDir = new File(uploadPath);
		
		if(!uploadDir.exists()) { // 업로드 폴더 존재하지 않으면...
			uploadDir.mkdir();
		}
		AtchFileVO atchFileVO = null;
		
		boolean isFirstFile = true; // 첫번째 파일 여부
		
		try {
			for(Part part : req.getParts()) {
				
				String fileName = part.getSubmittedFileName();
				if(fileName != null && !fileName.equals("")) {
					
					if(isFirstFile) { // 첫번째 파일인 경우
						
						isFirstFile = false;
						// 파일 기본정보 저장하기
						atchFileVO = new AtchFileVO();
						
						atchFileDao.insertAtchFile(atchFileVO);
					}
					
					String orgnFileName = fileName; // 원본파일명
					
					long fileSize = part.getSize(); // 파일 크기
					String saveFileName = ""; // 저장파일명
					String saveFilePath = ""; // 저장 파일 경로
					
					
					saveFileName = UUID.randomUUID().toString().replace("-", "");
					saveFilePath = uploadDir + "/" + saveFileName;
					
					// 확장자 추출
					String fileExtension = orgnFileName.lastIndexOf(".") < 0 ? "": 
										orgnFileName.substring(orgnFileName.lastIndexOf(".")+1);
					
					// 파일 업로드
					part.write(saveFilePath);
					atchFileVO.setStreFileNm(saveFileName);
					atchFileVO.setFileSize(fileSize);
					atchFileVO.setOrignlFileNm(orgnFileName);
					atchFileVO.setFileStreCours(saveFilePath);
					atchFileVO.setFileExtsn(fileExtension);
					atchFileVO.setFileCn("");
					
					// 파일 세부정보 저장
					atchFileDao.insertAtchFileDetail(atchFileVO);
					
					part.delete(); // 임시 업로드 파일 삭제하기
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		}
		
		
		return atchFileVO;
	}

	@Override
	public List<AtchFileVO> getAtchFileList(AtchFileVO atchFileVO) {

		
		
		return atchFileDao.getAtchFileList(atchFileVO);
	}

	@Override
	public AtchFileVO getAtchFileDetail(AtchFileVO atchFileVO) {

		
		
		return atchFileDao.getAtchFileDetail(atchFileVO);
	}
	
	

}
