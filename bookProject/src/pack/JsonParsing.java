package pack;

import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;

public class JsonParsing {
	private Connection conn;
	private PreparedStatement pstmt;
	
	public JsonParsing() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_book", "root", "123");
		} catch (Exception e) {
			System.out.println("db 연결 실패 : " + e);
		}
	}	
	
	public void pasing(){
		try {
			URL url = new URL("http://book.interpark.com/api/bestSeller.api?key=interpark&categoryId=100&output=json");

			// 한글 처리를 위해 InputStreamReader를 UTF-8 인코딩으로 감싼다.
			InputStreamReader isr = new InputStreamReader(url.openConnection().getInputStream(), "UTF-8");

			// JSON을 Parsing 한다. 문법오류가 날 경우 Exception 발생, without Exception ->
			// parse 메소드
			JSONObject object = (JSONObject) JSONValue.parseWithException(isr);
			// 객체, item 배열
			JSONArray items = (JSONArray) object.get("item");

			String sql = "insert into book (title, categoryId, priceStandard, priceEbook, description, pubDate, coverLargeUrl, publisher, author, translator) "
					+ "values (?,?,?,?,?,?,?,?,?,?) ";
			for (int i = 0; i < items.size(); i++) {
				JSONObject obj1 = (JSONObject) items.get(i);
				try {
					String date = obj1.get("pubDate").toString().substring(0, 4) + "-" +  
								  obj1.get("pubDate").toString().substring(4, 6) + "-" +
								  obj1.get("pubDate").toString().substring(6, 8);
					int priceEbook = (int)(Integer.parseInt(obj1.get("priceStandard").toString()) * 0.1);
					pstmt = conn.prepareStatement(sql);					
					pstmt.setString(1, obj1.get("title").toString());
					pstmt.setString(2, obj1.get("categoryId").toString());
					pstmt.setString(3, obj1.get("priceStandard").toString());
					pstmt.setString(4, Integer.toString(priceEbook));
					pstmt.setString(5, obj1.get("description").toString());
					pstmt.setString(6, date);
					pstmt.setString(7, obj1.get("coverLargeUrl").toString());
					pstmt.setString(8, obj1.get("publisher").toString());
					pstmt.setString(9, obj1.get("author").toString());
					pstmt.setString(10, obj1.get("translator").toString());
					if(pstmt.executeUpdate() > 0) System.out.println("성공이야 얘들아!!!!!!!!!!!!");
					else System.out.println("실패ㅠㅠㅠ DB 생성은 했니?");
				} catch (Exception e2) {
					System.out.println("DB Error : " + e2);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}  finally{
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();						
			} catch (Exception e) {}
		}
	}
	
	public static void main(String[] args) {
		JsonParsing test = new JsonParsing();
		test.pasing();
	}
}
