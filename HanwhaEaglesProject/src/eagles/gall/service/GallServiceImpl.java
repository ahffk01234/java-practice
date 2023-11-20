package eagles.gall.service;

import java.util.List;

import eagles.gall.dao.GallDaoImpl;
import eagles.gall.dao.IGallDao;
import eagles.gall.vo.GallVO;

public class GallServiceImpl implements IGallService {

	private IGallDao gallDao;
	
	private static IGallService gallService;
	
	private GallServiceImpl() {
		gallDao = GallDaoImpl.getInstance();
	}
	
	public static IGallService getInstance() {
		if(gallService == null) {
			gallService = new GallServiceImpl();
		}
		return gallService;
	}
	
	
	@Override
	public List<GallVO> showGall() {
		
		return gallDao.showGall();
	}

}
