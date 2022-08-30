package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.VO.BreadVO;

public class BreadDAO {
	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	int cnt = 0;

	public void dbConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 동적로딩

			String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
			String dbid = "gjai_5_6_0822";
			String dbpw = "smhrd6";
			conn = DriverManager.getConnection(url, dbid, dbpw);
			// DB연결
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void dbClose() {
		try {
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (rs != null) {
				rs.close();
			}
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}

	public ArrayList<BreadVO> category(String cat){
		BreadVO vo = null;
		ArrayList<BreadVO> brlist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT b_seq, b_category, b_name, b_img, b_count FROM t_bread WHERE b_category=? ORDER BY b_seq";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cat);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int seq = rs.getInt(1);
				String category = rs.getString(2);
				String name = rs.getString(3);
				String img = rs.getString(4);
				int count = rs.getInt(5);
				
				vo = new BreadVO(seq, category, name, img, count);
				brlist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return brlist;
	}
	
	public ArrayList<BreadVO> count(){
		BreadVO vo = null;
		ArrayList<BreadVO> clist = new ArrayList<>();
		
		try {
			dbConn();
			
			String sql = "SELECT b_category, COUNT(b_category) FROM t_bread GROUP BY b_category";
			psmt = conn.prepareStatement(sql);

			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String category = rs.getString(1);
				int count = rs.getInt(2);
				
				vo = new BreadVO(category, count);
				clist.add(vo);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return clist;
	}
}