package eagles.shop.product.service;

import java.util.List;

import eagles.shop.product.vo.CartDtVO;
import eagles.shop.product.vo.CartVO;
import eagles.shop.product.dao.IProdDao;
import eagles.shop.product.dao.ProdDaoImpl;
import eagles.shop.product.vo.MypageProductVO;
import eagles.shop.product.vo.ProdRevVO;
import eagles.shop.product.vo.ProdVO;

public class ProdServiceImpl implements IProdService{
	
	private IProdDao prodDao;
	
	private static IProdService prodService;
	
	private ProdServiceImpl() {
		prodDao = ProdDaoImpl.getInstance();
	}
	
	public static IProdService getInstance() {
		if(prodService == null) {
			prodService = new ProdServiceImpl();
		}
		
		return prodService;
	}

	@Override
	public List<ProdRevVO> showProdRev(String prodCd) {
		return prodDao.showProdRev(prodCd);
	}

	
	@Override
	public ProdVO showProduct(String prodCd) {
		
		return prodDao.showProduct(prodCd);
	}

	
	@Override
	public List<ProdVO> showProductAll() {
		
		return prodDao.showProductAll();
	}
	
	@Override
	public int inputCart(CartVO cv) {
		return prodDao.inputCart(cv);
	}

	@Override
	public int inputCartDt(CartDtVO cdv) {
		return prodDao.inputCartDt(cdv);
	}

	@Override
	public List<MypageProductVO> showMypageProduct(String memId) {
		
		return prodDao.showMypageProduct(memId);
	}
	
	@Override
	public List<MypageProductVO> myProductList(String memId) {
		
		return prodDao.myProductList(memId);
	}
	
	@Override
	public int myProductPay(String memId) {
		
		return prodDao.myProductPay(memId);
	}

	@Override
	public int myProductCancle(MypageProductVO vo) {
		
		return prodDao.myProductCancle(vo);
	}

	@Override
	public List<MypageProductVO> searchContent(MypageProductVO vo) {
		// TODO Auto-generated method stub
		return prodDao.searchContent(vo);
	}

	@Override
	public int inputRev(ProdRevVO prv) {
		
		return prodDao.inputRev(prv);
	}
	
	

	
	
}
