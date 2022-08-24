package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.VO.MemberVO;

public class MemberDAO {

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
	
	public int Register(MemberVO vo) {
		// JDBC코드작성하기

		try {
			dbConn();

			String sql = "insert into t_member values(?, ?, ?, sysdate, 'n')";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getEmail());
			psmt.setString(2, vo.getPassword());
			psmt.setString(3, vo.getUsername());
			
			// SQL준비

			cnt = psmt.executeUpdate();
			// SQL실행

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}
	public String login(MemberVO vo) {
		String username="";
		try {
			dbConn();
			
			String sql = "Select * from t_member where mb_id = ? and mb_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getEmail());
			psmt.setString(2, vo.getPassword());
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				username = rs.getString("mb_name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return username;
	}
}
