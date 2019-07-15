package Sales.Bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;



public class SalesDBBean {
	//싱글톤 
		private static SalesDBBean instance = new SalesDBBean();
		
		public static SalesDBBean getInstance() {
			return instance;
		}
		
		private SalesDBBean() {}
		
		//커넥션 풀 객체 생성
		private Connection getConnection() throws Exception{
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource)envCtx.lookup("jdbc/TestDB");
			return ds.getConnection();
		}
		
		//월별 총 매출 조회
		public JSONArray allSales(){
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			JSONObject jsonObject;
			JSONArray jsonArray = new JSONArray();
			
			try {
				conn = getConnection();
				
				String sql = "select substring(od_date, 1, 7) as month,\r\n" + 
						"month(od_date),\r\n" + 
						"sum(od_total_amt) as totalSales\r\n" + 
						"from cafe_order\r\n" + 
						"where od_date like '2018%'\r\n" + 
						"group by month;";
				System.out.println(sql);
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					jsonObject = new JSONObject();
					jsonObject.put("month", rs.getString("month"));
					jsonObject.put("totalSales", rs.getInt("totalSales"));
					jsonArray.add(jsonObject);
					System.out.println(jsonArray);
				}
				
			}catch(Exception e) {
				System.out.println("매출 조회 오류가 있습니다.");
				e.printStackTrace();
			}finally {
				if(rs!=null)try {rs.close();}catch(Exception e) {}
				if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
				if(conn!=null)try {conn.close();}catch(Exception e) {}
			}
			return jsonArray;
		}
		
}
