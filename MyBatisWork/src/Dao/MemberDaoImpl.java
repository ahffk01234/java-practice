package Dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import VO.MemberVO;
import Util.MyBatisUtil;

public class MemberDaoImpl implements IMemberDao{

	private static IMemberDao memDao;
	
	public MemberDaoImpl() {
		
	}
	
	public static IMemberDao getInstance() {
		if(memDao == null) {
			memDao = new MemberDaoImpl();
			
		}
		return memDao;
	}
//	public class getInstance implements IMemberDao {
		
		@Override
		public int insertMember(MemberVO mv) {
			
			int cnt = 0;
			
			SqlSession session = MyBatisUtil.getInstance();
			
			
			try {
				cnt = session.insert("member.insertBoard",mv);
				session.commit();
			}catch(PersistenceException ex) {
				session.rollback();
				ex.printStackTrace();
			}finally {
				session.close();
			}
			return cnt;
		}
		
		@Override
		public boolean checkMember(String memId) {
			
			boolean isExist = false;
			
			SqlSession session = MyBatisUtil.getInstance(true);
			
			try {
				int cnt = session.selectOne("member.insertBoard", memId);
				
				if(cnt > 0) {
					isExist = true;
				}
				session.commit();
			}catch(PersistenceException ex) {
				session.rollback();
				ex.printStackTrace();
			}finally {
				session.close();
			}
			return isExist;
		}
		
		@Override
		public List<MemberVO> getAllMember() {
			
			List<MemberVO> memList = new ArrayList<MemberVO>();
			
			SqlSession session = MyBatisUtil.getInstance();
			try {
				memList = session.selectList("member.getAllBoard");
			}catch(PersistenceException ex) {
				ex.printStackTrace();
			}finally {
				session.close();
				
			}
			
			
			
			return memList;
		}
		
		@Override
		public int updateMember(MemberVO mv) {
			int cnt = 0;
			
			SqlSession session = MyBatisUtil.getInstance();
			
			
			try {
				cnt = session.update("member.updateBoard",mv);
				session.commit();
			}catch(PersistenceException ex) {
				session.rollback();
				ex.printStackTrace();
			}finally {
				session.close();
			}
			return cnt;
		}
		
		@Override
		public int deleteMember(String memId) {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public List<MemberVO> searchMember(MemberVO mv) {
			
			List<MemberVO> memList = Collections.EMPTY_LIST;
			
			SqlSession session = null;
			
			try {
				session = MyBatisUtil.getInstance(true);
				
				Map<String, String> paramMap = new HashMap<String, String>();
				paramMap.put("memId", mv.getMemId());
				paramMap.put("memName", mv.getMemName());
				paramMap.put("memTel", mv.getMemTel());
				paramMap.put("memAddr", mv.getMemAddr());
				memList = session.selectList("member.searchBoard2",paramMap);
				
				
			}catch(PersistenceException ex) {
				ex.printStackTrace();
			}finally {
				session.close();
			}
			
			return memList;
		}

	
}
