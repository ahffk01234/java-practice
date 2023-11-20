package eagles.shop.product.dao;

import java.util.List;

import eagles.shop.product.vo.CartDtVO;
import eagles.shop.product.vo.CartVO;
import eagles.shop.product.vo.MypageProductVO;
import eagles.shop.product.vo.ProdRevVO;
import eagles.shop.product.vo.ProdVO;

public interface IProdDao {

	/**
	 * ProdVO에 담긴 데이터를 DB에서 가져오기 위한 메서드
	 * @param pv : DB에서 불러올 데이터(상품하나에 대한 데이터이기 떄문에 리스트X)를 담고 있는 VO객체
	 * @return : DB에서 불러올 객체를 가져옴
	 */
	public ProdVO showProduct(String prodCd);
	
	
	/**
	 * ProdRevVO에 담긴 데이터를 DB에서 가져오기 위한 메서드
	 * @param prv : DB에서 상품 리뷰를 불러옴
	 * @return
	 */

	public List<ProdRevVO> showProdRev(String prodCd);
	
	public List<ProdVO> showProductAll();
	
	public int inputCart(CartVO cv);
	
	public int inputCartDt(CartDtVO cdv);
	
	
	/**
	 * 구매내역 확인메서드
	 * @param memId
	 * @return
	 */
	public List<MypageProductVO> showMypageProduct(String memId);
	
	
	/**
	 * 장바구니 메서드
	 * @param memId
	 * @return
	 */
	public List<MypageProductVO> myProductList(String memId);
	
	public int myProductPay(String memId);
	
	public int myProductCancle(MypageProductVO vo);

	public List<MypageProductVO> searchContent(MypageProductVO vo);

	public int inputRev(ProdRevVO prv);
	
}
