package eagles.gall.dao;

import java.util.ArrayList;
import java.util.List;

import eagles.gall.vo.GallVO;

public class GallDaoImpl extends MyBatisDao implements IGallDao{
	
	private static IGallDao gallDao;
	
	private GallDaoImpl() {
		
	}
	
	public static IGallDao getInstance() {
		if(gallDao == null) {
			gallDao = new GallDaoImpl();
		}
		return gallDao;
	}
	

	@Override
	public List<GallVO> showGall() {
		
		List<GallVO> gallList = new ArrayList<GallVO>();
		
		gallList = selectList("gall.showGall");
			
		return gallList;
	}

}
