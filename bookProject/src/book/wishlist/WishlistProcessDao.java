package book.wishlist;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.book.BookProcessDao;
import book.mybatis.SqlMapConfig;

public class WishlistProcessDao {
	private static WishlistProcessDao dao = new WishlistProcessDao();
	
	public static WishlistProcessDao getInstance(){
		return dao;
	}
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List getWishlist() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("getWish"); //DataMapper 의 ID를 읽기
		sqlSession.close();
		return list;
	}
	
	public boolean deleteWish(int arg){
		SqlSession sqlSession = factory.openSession();
		boolean b = false;
		try {
			int cou = sqlSession.delete("deleteWish", arg);
			if(cou > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("deleteWish err : " + e);
			sqlSession.rollback();
		} finally {
			if(sqlSession != null) sqlSession.close();			
		}
		return b;
	}
}
