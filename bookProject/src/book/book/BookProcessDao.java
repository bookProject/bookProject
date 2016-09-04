package book.book;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import book.mybatis.SqlMapConfig;
import book.wishlist.WishlistDto;

public class BookProcessDao {
	private static BookProcessDao dao = new BookProcessDao();
	
	public static BookProcessDao getInstance(){
		return dao;
	}
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List getTopBook() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("getTopBook"); //DataMapper 의 ID를 읽기
		sqlSession.close();
		return list;
	}
	
	public List getBooks() throws SQLException{
		SqlSession sqlSession = factory.openSession();
		List list = sqlSession.selectList("getBooks");
		sqlSession.close();
		return list;
	}	
	
	public bookDto getBookByNo(int no) throws SQLException{
		SqlSession sqlSession = factory.openSession();
		bookDto dto = sqlSession.selectOne("getBookByNo", no);
		sqlSession.close();
		return dto;
	}
}
