package kr.or.ddit.comm.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import kr.or.ddit.comm.vo.AtchFileVO;

public interface IAtchFileService {
	
	public AtchFileVO saveAtchFileList(HttpServletRequest req);
	
	public List<AtchFileVO> getAtchFileList(AtchFileVO atchFileVO);
	
	public AtchFileVO getAtchFileDetail(AtchFileVO atchFileVO);
}
