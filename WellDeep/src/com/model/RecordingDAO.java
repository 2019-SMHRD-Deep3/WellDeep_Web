package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RecordingDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private String r_number;
	private String r_file;
	private String r_time;
	private String p_id;
	private String c_number;
	private String i_number;
	private String v_number;
	
	RecordingDTO info;
	ArrayList<RecordingDTO> list;

	private static RecordingDAO dao;

	public static RecordingDAO getDAO() {
		if (dao == null) {
			dao = new RecordingDAO();
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
	
	public ArrayList<RecordingDTO> select(String id) {
		
		info = null;
		list = new ArrayList<RecordingDTO>();

		try {
			getConnection();

			String sql = "select * from record where perents_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			//System.out.println(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {

				r_number = rs.getString("record_number");
				r_file = rs.getString("record_file");
				r_time = rs.getString("record_time");
				p_id = rs.getString("perents_id");
				c_number = rs.getString("children_number");
				i_number = rs.getString("img_number");
				v_number = rs.getString("voice_number");
											
				info = new RecordingDTO(r_number, r_file, r_time, p_id, c_number, i_number, v_number);
				list.add(info);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

}
