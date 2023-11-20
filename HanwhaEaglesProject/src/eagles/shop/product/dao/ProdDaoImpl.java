package eagles.shop.product.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import eagles.comm.util.MyBatisUtil;
import eagles.member.vo.MemberVO;
import eagles.shop.product.vo.CartDtVO;
import eagles.shop.product.vo.CartVO;
import eagles.shop.product.vo.MypageProductVO;
import eagles.shop.product.vo.ProdRevVO;
import eagles.shop.product.vo.ProdVO;

public class ProdDaoImpl extends MyBatisDao implements IProdDao {

	private static IProdDao prodDao;
	
	private ProdDaoImpl() {
		
	}
	
	public static IProdDao getInstance() {
		if(prodDao == null) {
			prodDao = new ProdDaoImpl();
		}
		return prodDao;
	}
	
	
	@Override
	public List<ProdRevVO> showProdRev(String prodCd) {
		List<ProdRevVO> prodRevList = new ArrayList<ProdRevVO>();
		
		prodRevList = selectList("prod.showProdRev", prodCd);
		
		return prodRevList;
	}
	
	
	@Override
	public List<ProdVO> showProductAll() {
		
		List<ProdVO> prodList = new ArrayList<ProdVO>();
		
	
		prodList = selectList("prod.showProductAll");
		
		
		
		return prodList;
	}
	

	@Override
	public ProdVO showProduct(String prodCd) {

		
		ProdVO pv = selectOne("prod.showProduct", prodCd);
		
		
		return pv;
	}

	

	@Override
	public List<MypageProductVO> showMypageProduct(String memId) {
		
		List<MypageProductVO> mypageProductList = new ArrayList<MypageProductVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			mypageProductList = session.selectList("prod.showMypageProduct", memId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		
		return mypageProductList;
	}
	
	
	@Override 
	public List<MypageProductVO> myProductList(String memId) {
		
		List<MypageProductVO> mypageProductList = new ArrayList<MypageProductVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			mypageProductList = session.selectList("prod.myProductList", memId);
		}catch(PersistenceException ex) {
			ex.printStackTrace();		
		}finally {
			session.close();
		}
		
				
		return mypageProductList;
	}
	
	
	@Override
	public int myProductPay(String memId) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.update("prod.myProductPay", memId);
			session.commit();
		}catch (PersistenceException ex){
			session.rollback();
			ex.printStackTrace();
						
		}finally {
			session.close();
		}
		return cnt;		
	}

	
	@Override
	public int myProductCancle(MypageProductVO vo) {

		int cnt = 0;
		SqlSession session = MyBatisUtil.getInstance();
		
		try {

			cnt = session.delete("prod.myProductCancle", vo);
			session.commit();
		}catch (PersistenceException ex){
			session.rollback();
			ex.printStackTrace();
						
		}finally {
			session.close();
		}
		return cnt;		
	}
	
		@Override
	public int inputCart(CartVO cv) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("cart.inputCart", cv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cnt;
	}

	@Override
	public int inputCartDt(CartDtVO cdv) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("cart.inputCartDt", cdv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	@Override
	public List<MypageProductVO> searchContent(MypageProductVO vo) {
		List<MypageProductVO> mypageProductList = new ArrayList<MypageProductVO>();
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			mypageProductList = session.selectList("prod.searchContent", vo);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		
		return mypageProductList;
	}

	@Override
	public int inputRev(ProdRevVO prv) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getInstance();
		
		try {
			cnt = session.insert("prod.inputRev", prv);
			session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	
}
