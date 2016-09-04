package book.wishlist;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.mybatis.SqlMapConfig;

public class WishlistProcessDao {
	private static WishlistProcessDao dao = new WishlistProcessDao();
	
	public static WishlistProcessDao getInstance(){
		return dao;
	}
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List getWishlist(String mem_id) throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("getWish", mem_id); //DataMapper 의 ID를 읽기
		sqlSession.close();
		return list;
	}
	
	public WishlistDto getWishByNo(WishlistDto dto){
		WishlistDto dto1 = null;
		SqlSession sqlSession = factory.openSession();
		try {
			dto1 = sqlSession.selectOne("getWishByNo", dto);
		} catch (Exception e) {
			System.out.println("getWishByNo Err : " + e);
		} finally {
			if(sqlSession != null) sqlSession.close();
		}
		return dto1;
	}	
	
	public boolean insertWish(WishlistDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			if(sqlSession.insert("insertWish", dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertWish Err : " + e);
			sqlSession.rollback();
		} finally{
			if(sqlSession != null) sqlSession.close();
		}
		return b;
	}
	
	public boolean deleteWish(WishlistDto dto){
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			if(sqlSession.delete("deleteWish", dto) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteWish Err : " + e);
			sqlSession.rollback();
		} finally{
			if(sqlSession != null) sqlSession.close();
		}
		return b;
	}
}
