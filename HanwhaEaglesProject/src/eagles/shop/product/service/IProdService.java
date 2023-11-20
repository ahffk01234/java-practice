package eagles.shop.product.service;

import java.util.List;

import eagles.shop.product.vo.CartDtVO;
import eagles.shop.product.vo.CartVO;
import eagles.shop.product.vo.MypageProductVO;
import eagles.shop.product.vo.ProdRevVO;
import eagles.shop.product.vo.ProdVO;

public interface IProdService {

	/**
	 * 
	 * @return
	 */
	public List<ProdVO> showProductAll();
	
	
	/**
	 * 상품페이지 별로 상품관련 정보출력을 위한 메서드
	 * @param pv : 상품 객체 
	 * @return : 가져온 상품 정보들을 반환
	 */
	public ProdVO showProduct(String prodCd);
	
	/**
	 * 상품 관련 리츄
	 * @param prv
	 * @return
	 */;
	
	public int inputCart(CartVO cv);
	
	public int inputCartDt(CartDtVO cdt);
	
	public List<ProdRevVO> showProdRev(String prodCd);
	
	public List<MypageProductVO> showMypageProduct(String memId);
	
	public List<MypageProductVO> myProductList(String memId);
	
	public int myProductPay(String memId);
	
	public int myProductCancle(MypageProductVO vo);

	public List<MypageProductVO> searchContent(MypageProductVO vo);
	
	public int inputRev(ProdRevVO prv);

	
}
