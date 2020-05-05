package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ImgDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private static ImgDAO dao;

	public static ImgDAO getDAO() {
		if (dao == null) {
			dao = new ImgDAO();
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
	
	public int insertImg(ImgDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into img values(img_seq.nextval,SYSDATE,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,dto.getImg_file());
			psmt.setString(2,dto.getPerents_id());
			psmt.setString(3,dto.getChildren_number());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
}
