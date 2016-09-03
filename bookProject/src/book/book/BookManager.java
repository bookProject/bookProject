package book.book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BookManager {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	
	public BookManager() {
		try {
			Context ctx = new InitialContext();
	        ds= (DataSource)ctx.lookup("java:comp/env/jdbc_maria");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean bookInsert(BookBean bean) {
		boolean b = false;
		String sql = "insert into ebook(title, description, pubDate, image, publisher, author, translator) values(?,?,?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getDescription());
			pstmt.setString(3, bean.getPubDate());
			pstmt.setString(4, bean.getCoverSmallUrl());
			pstmt.setString(5, bean.getCoverLargeUrl());
			pstmt.setString(6, bean.getPublisher());
			pstmt.setString(7, bean.getAuthor());
			pstmt.setString(8, bean.getTranslator());
			
			if(pstmt.executeUpdate() > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return b;
	}
	
	public BookBean getBook(String no) {
		BookBean bean = null;
		String sql = "select * from ebooks where no=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bean = new BookBean();
				bean.setNo(rs.getString(1));
				bean.setTitle(rs.getString(2));
				bean.setDescription(rs.getString(3));
				bean.setPubDate(rs.getString(4));
				bean.setCoverSmallUrl(rs.getString(5));
				bean.setCoverLargeUrl(rs.getString(6));
				bean.setPublisher(rs.getString(7));
				bean.setAuthor(rs.getString(8));
				bean.setTranslator(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return bean;
	}
	
	public ArrayList<BookBean> getBooks() {
		ArrayList<BookBean> list = new ArrayList<>();
		String sql = "select * from ebooks";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				BookBean bean = new BookBean();
				bean.setNo(rs.getString(1));
				bean.setTitle(rs.getString(2));
				bean.setDescription(rs.getString(3));
				bean.setPubDate(rs.getString(4));
				bean.setCoverSmallUrl(rs.getString(5));
				bean.setCoverLargeUrl(rs.getString(6));
				bean.setPublisher(rs.getString(7));
				bean.setAuthor(rs.getString(8));
				bean.setTranslator(rs.getString(9));
				
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	public boolean bookUpdate(BookBean bean, String no) {
		boolean b = false;
		String sql = "update member set title=?,description=?,pubDate=?,image=?,publisher=?,author=?,translator=? where no=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getTitle());
			pstmt.setString(2, bean.getDescription());
			pstmt.setString(3, bean.getPubDate());
			pstmt.setString(4, bean.getCoverSmallUrl());
			pstmt.setString(5, bean.getCoverLargeUrl());
			pstmt.setString(6, bean.getPublisher());
			pstmt.setString(7, bean.getAuthor());
			pstmt.setString(8, bean.getTranslator());
			
			if(pstmt.executeUpdate() > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return b;
	}
	
	public boolean bookDelete(String no) {
		boolean b = false;
		String sql = "delete from ebook where no=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			
			if(pstmt.executeUpdate() > 0) {
				b = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return b;
	}
}
