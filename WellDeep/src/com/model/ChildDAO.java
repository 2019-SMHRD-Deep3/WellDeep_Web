package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ChildDAO {
	private Connection conn;
	private PreparedStatement psmt;
	
	private static ChildDAO dao;
	private ChildDAO() {
		
	}
	
	public static ChildDAO getDAO() {
		if(dao == null) {
			dao = new ChildDAO();
		}
		return dao;
	}
	
	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "welldeep";
			String db_pw = "welldeep";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	private void close() {
		try {
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int join(ChildDTO dto) {

		int cnt = 0;

		try {

			getConnection();
			String sql = "insert into children values(?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getC_num());
			psmt.setString(2, dto.getC_name());
			psmt.setString(3, dto.getC_sex());
			psmt.setString(4, dto.getC_age());
			psmt.setString(5, dto.getC_photo());
			psmt.setString(6, dto.getP_id());
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	
	public int updateChild(ChildDTO dto) {
		int cnt = 0;
		
		
		try {
			getConnection();
			String sql = "update children set children_number=?,children_name=?,children_sex=?,children_age=?,children_photo=? where perents_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getC_num());
			psmt.setString(2, dto.getC_name());
			psmt.setString(3, dto.getC_sex());
			psmt.setString(4, dto.getC_age());
			psmt.setString(5, dto.getC_photo());
			psmt.setString(6, dto.getP_id());
			
			cnt = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
				
		return cnt;
	}

}
