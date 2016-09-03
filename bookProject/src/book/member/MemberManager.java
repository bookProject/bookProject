package book.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberManager {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DataSource ds;
	
	public MemberManager() {
		try {
			Context ctx = new InitialContext();
	        ds= (DataSource)ctx.lookup("java:comp/env/jdbc_maria");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean memberInsert(MemberBean bean) {
		boolean b = false;
		String sql = "insert into member(id, passwd, name, email, gaibil) values(?,?,?,?,now())";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPasswd());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getEmail());
			
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
	
	public boolean loginCheck(String id) {
		boolean b = false;
		String sql = "select * from member where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
	
	public MemberBean getMember(String id) {
		MemberBean bean = null;
		String sql = "select * from member where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bean = new MemberBean();
				bean.setNo(rs.getString("no"));
				bean.setId(rs.getString("id"));
				bean.setPasswd(rs.getString("pw"));
				bean.setEmail(rs.getString("email"));
				bean.setName(rs.getString("name"));
				bean.setGaibil(rs.getString("gaibil"));
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
	public ArrayList<MemberBean> getMembers() {
		ArrayList<MemberBean> list = new ArrayList<>();
		String sql = "select * from member";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setNo(rs.getString("no"));
				bean.setId(rs.getString("id"));
				bean.setPasswd(rs.getString("passwd"));
				bean.setEmail(rs.getString("email"));
				bean.setName(rs.getString("name"));
				bean.setGaibil(rs.getString("gaibil"));
				
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
	
	public boolean memberUpdate(MemberBean bean, String id) {
		boolean b = false;
		String sql = "update member set passwd=?,name=?,email=? where id=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bean.getPasswd());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getEmail());
			pstmt.setString(4, id);
			
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
	
	public boolean adminCheck(String id, String pw) {
		boolean b = false;
		String sql = "select * from admin where admin_id=? and admin_passwd=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
