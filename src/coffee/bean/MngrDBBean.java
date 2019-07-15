package coffee.bean;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class MngrDBBean {
	// MngrDBBean 전역 객체 생성 <-- 한 개의 객체만 생성해서 공유
	private static MngrDBBean instance = new MngrDBBean();

	// MngrDBBean 객체를 리턴하는 메소드
	public static MngrDBBean getInstance() {
		return instance;	
	}

	private MngrDBBean() {
	}

	// 커넥션 풀에서 커넥션 객체를 얻어내는 메소드
	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/TestDB");
		return ds.getConnection();
	}

	//////////////////////////관리자, 직원 메소드//////////////////////////////
	
	// 관리자 인증 메소드
	public int userCheck(String name, String passwd) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection();

			String orgPass = passwd;
			
			pstmt = conn.prepareStatement("select passwd from staff where stf_code = ?");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if (rs.next()) {// 해당 아이디가 있으면 수행
				String dbpasswd = rs.getString("passwd");
				if (orgPass.equals(dbpasswd))
					x = 1; // 인증성공
				else
					x = 0; // 비밀번호 틀림
			} else// 해당 아이디 없으면 수행
				x = -1;// 아이디 없음

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		return x;
	}



	// 관리자, 직원 추가
	public void insertStaff(String id, String name, String pw, String tel) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into staff values(?,?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, pw);
			pstmt.setString(4, tel);
			pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
	}

	//관리자, 직원 구분
	public int confirmAuthority(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = -1;

		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from staff where stf_code= ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				id = rs.getString("stf_code");
				if (id.contains("m")) {
					x = 1; // 관리자
				} else if (id.contains("e")) {
					x = 0;
				}
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		return x;
	}

	//직원 조회
	public JSONArray selectStaff() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject jsonObject;
		JSONArray jsonArray = new JSONArray();
		
		try {
			conn = getConnection();

			String sql = "select * from staff";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				jsonObject = new JSONObject();
				jsonObject.put("stf_code", rs.getString("stf_code"));
				jsonObject.put("name", rs.getString("name"));
				jsonObject.put("passwd", rs.getString("passwd"));
				jsonObject.put("ph_num", rs.getString("ph_num"));
				jsonArray.add(jsonObject);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		return jsonArray;
	}

	 //특정 직원 조회
	public JSONArray oneSelectStaff(String stf_code){
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      JSONObject jsonObject;
	      JSONArray jsonArray = new JSONArray();
	         
	      try {
	         conn = getConnection();
	            
	         String sql = "select * from staff where stf_code = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, stf_code);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            jsonObject = new JSONObject();
	            jsonObject.put("stf_code",rs.getString("stf_code"));
	            jsonObject.put("name",rs.getString("name"));
	            jsonObject.put("passwd",rs.getString("passwd"));
	            jsonObject.put("ph_num",rs.getString("ph_num"));
	            jsonArray.add(jsonObject);
	         }
	      }catch(Exception e) {
	         System.out.println("특정 직원 조회 오류.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	      return jsonArray;
	   }

	
	//직원 삭제
	public void deleteStaff(String id){
	        Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs= null;
		
	        try {
				conn = getConnection();

					pstmt = conn.prepareStatement("delete from staff where stf_code = ?");
					pstmt.setString(1, id);
					pstmt.executeUpdate();

	        } catch(Exception ex) {
	        	ex.printStackTrace();
	        } finally {
	        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	        	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	        	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }
	}

	//////////////////////////메뉴 관리//////////////////////////////
	
	//메뉴 조회
	public ArrayList<MenuBean> getMenuList(){
		ArrayList<MenuBean> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = null;
	
		try {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/TestDB");
		conn = ds.getConnection();
		list = new ArrayList<>();
		
		String sql = "select * from menu";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			MenuBean m = new MenuBean();
			m.setMenu_code(rs.getString("menu_code"));
			m.setClass_code(rs.getString("class_code"));
			m.setMenu_name(rs.getString("menu_name"));
			m.setPrice(rs.getInt("price"));
			m.setImg(rs.getString("img"));
			list.add(m);
		}
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)
				try{rs.close();}catch(SQLException sqle){}
			if(pstmt!=null)
				try{pstmt.close();}catch(SQLException sqle){}
			if(conn!=null)
				try{conn.close();}catch(SQLException sqle){}
		}
		return list;
	
	}
	
	
	//메뉴 추가
	public void insertProduct(MenuBean product) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "insert into menu(class_code, menu_name, price, img) values(?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getClass_code());
			pstmt.setString(2, product.getMenu_name());
			pstmt.setInt(3, product.getPrice());
			pstmt.setString(4, product.getImg());
			pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		
	}
			
	//메뉴 수정
	public void updateMenu(String menu_name,int af_price) {
		   Connection conn = null;
		   PreparedStatement pstmt = null;
		   ResultSet rs = null;
		   try {
		      conn = getConnection();
		            
		      String sql = "update menu set price=? where menu_name=?";
		      pstmt = conn.prepareStatement(sql);
		      pstmt.setInt(1, af_price);
		      pstmt.setString(2, menu_name);
		      pstmt.executeUpdate();
		   }catch(Exception e) {
		      System.out.println("고객 수정 오류.");
		   }finally {
		      if(rs!=null)try {rs.close();}catch(Exception e) {}
		      if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
		      if(conn!=null)try {conn.close();}catch(Exception e) {}
		      }
	}
	
	//메뉴 삭제
		public void deleteMenu(String menu_name){
		        Connection conn = null;
		        PreparedStatement pstmt = null;
		        ResultSet rs= null;
			
		        try {
					conn = getConnection();

						pstmt = conn.prepareStatement("delete from menu where menu_name = ?");
						pstmt.setString(1, menu_name);
						pstmt.executeUpdate();

		        } catch(Exception ex) {
		        	ex.printStackTrace();
		        } finally {
		        	if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		        	if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		        	if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		        }
		}
	
	////////////////////////////고객 관리 메소드/////////////////////////////////

	//고객 추가
	public void insertCus(String phone, String name) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "insert into customer(cus_code, cus_name) values(?,?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			pstmt.setString(2, name);
			pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
	}
	
	//고객 전체 조회
	public JSONArray selectCus() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		JSONObject jsonObject;
		JSONArray jsonArray = new JSONArray();
		
		try {
			conn = getConnection();

			String sql = "select * from customer";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				jsonObject = new JSONObject();
				jsonObject.put("cus_code", rs.getString("cus_code"));
				jsonObject.put("cus_name", rs.getString("cus_name"));
				jsonObject.put("cus_point", rs.getInt("cus_point"));
				jsonArray.add(jsonObject);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (rs != null)
				try {rs.close();} catch (SQLException ex) {}
			if (pstmt != null)
				try {pstmt.close();} catch (SQLException ex) {}
			if (conn != null)
				try {conn.close();} catch (SQLException ex) {}
		}
		return jsonArray;
	}
	
	 //특정 고객 조회
	   public JSONArray oneSelectCus(String code){
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      JSONObject jsonObject;
	      JSONArray jsonArray = new JSONArray();
	         
	      try {
	         conn = getConnection();
	            
	         String sql = "select * from customer where cus_code = ?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, code);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	            jsonObject = new JSONObject();
	            jsonObject.put("cus_code",rs.getString("cus_code"));
	            jsonObject.put("cus_name",rs.getString("cus_name"));
	            jsonObject.put("cus_point",rs.getInt("cus_point"));
	            jsonArray.add(jsonObject);
	         }
	      }catch(Exception e) {
	         System.out.println("특정 고객 조회 오류.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	      return jsonArray;
	   }

	
	 //고객 삭제
	public void deleteCus(String id){
			Connection conn = null;
		    PreparedStatement pstmt = null;
		    ResultSet rs= null;
			System.out.println(id + "이까지오냐?");
		    try {
			conn = getConnection();
				pstmt = conn.prepareStatement("delete from customer where cus_code = ?");
				pstmt.setString(1, id);
				pstmt.executeUpdate();
		    } catch(Exception ex) {
		       	ex.printStackTrace();
		    } finally {
		     if (rs != null) try { rs.close(); } catch(SQLException ex) {}
		     if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
		     if (conn != null) try { conn.close(); } catch(SQLException ex) {}
		    }
	}
	
	//고객 수정
	public void updateCus(String phone,String af_phone) {
	      Connection conn = null;
	      PreparedStatement pstmt = null;
	      ResultSet rs = null;
	      try {
	         conn = getConnection();
	            
	         String sql = "update customer set cus_code=? where cus_code=?";
	         pstmt = conn.prepareStatement(sql);
	         pstmt.setString(1, af_phone);
	         pstmt.setString(2, phone);
	         pstmt.executeUpdate();
	      }catch(Exception e) {
	         System.out.println("고객 수정 오류.");
	      }finally {
	         if(rs!=null)try {rs.close();}catch(Exception e) {}
	         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
	         if(conn!=null)try {conn.close();}catch(Exception e) {}
	      }
	}
	
	//주문 추가
		public void InsertOrder(String cus_code, int od_total_amt) {
		      Connection conn = null;
		      PreparedStatement pstmt = null;
		      ResultSet rs = null;
		      try {
		         conn = getConnection();
		            
		         String sql = "insert into cafe_order(cus_code, od_total_amt) value(?,?)";
		         pstmt = conn.prepareStatement(sql);
		         pstmt.setString(1, cus_code);
		         pstmt.setInt(2, od_total_amt);
		         pstmt.executeUpdate();
		      }catch(Exception e) {
		         System.out.println("주문 추가 오류.");
		      }finally {
		         if(rs!=null)try {rs.close();}catch(Exception e) {}
		         if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
		         if(conn!=null)try {conn.close();}catch(Exception e) {}
		      }
		}
		
		// 고객 포인트 조회
		public int selectPoint(String cus_code) {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			JSONObject jsonObject;
			JSONArray jsonArray = new JSONArray();
			int a=0;
			
			try {
				conn = getConnection();

				String sql = "select cus_point from customer where cus_code = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, cus_code); 
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					jsonObject = new JSONObject();
					a=rs.getInt("cus_point");
				}
			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				if (rs != null)
					try {rs.close();} catch (SQLException ex) {}
				if (pstmt != null)
					try {pstmt.close();} catch (SQLException ex) {}
				if (conn != null)
					try {conn.close();} catch (SQLException ex) {}

			}

			return a;
		}
		
		// 포인트 추가
		public void updatePoint(int point, String cus_code) {
			   Connection conn = null;
			   PreparedStatement pstmt = null;
			   ResultSet rs = null;
			   try {
			      conn = getConnection();
			            
			      String sql = "update customer set cus_point=? where cus_code=?";
			      pstmt = conn.prepareStatement(sql);
			      pstmt.setInt(1, point);
			      pstmt.setString(2, cus_code);
			      pstmt.executeUpdate();
			   }catch(Exception e) {
			      System.out.println("포인트 수정 오류.");
			   }finally {
			      if(rs!=null)try {rs.close();}catch(Exception e) {}
			      if(pstmt!=null)try {pstmt.close();}catch(Exception e) {}
			      if(conn!=null)try {conn.close();}catch(Exception e) {}
			      }
		}
}