package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PostDAO {

	private Connection conn;
	private PreparedStatement psmt;
	
	private static PostDAO dao;
	private PostDAO() {
		
	}
	
	public static PostDAO getDAO() {
		if(dao == null) {
			dao = new PostDAO();
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
	
	public int upload(PostDTO dto) {

		int cnt = 0;

		try {

			getConnection();
			String sql = "insert into post values(post_seq.nextval,?,?,sysdate,?)";
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, dto.getP_title());
			psmt.setString(2, dto.getP_context());
			psmt.setString(3, dto.getP_id());
			
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

}

