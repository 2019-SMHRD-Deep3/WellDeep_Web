package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AlarmDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private String a_number;
	private String a_time;
	private String p_id;
	private String c_number;
	private String i_file;
	private String v_file;
	
	AlarmDTO info;
	ArrayList<AlarmDTO> list;

	private static AlarmDAO dao;

	public static AlarmDAO getDAO() {
		if (dao == null) {
			dao = new AlarmDAO();
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
	
	public ArrayList<AlarmDTO> select(String id) {
		
		info = null;
		list = new ArrayList<AlarmDTO>();

		try {
			getConnection();

			String sql = "select * from alarm where parents_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			//System.out.println(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {

				a_number = rs.getString("alarm_number");
				a_time = rs.getString("alarm_time");
				p_id = rs.getString("parents_id");
				c_number = rs.getString("children_number");
				i_file = rs.getString("img_file");
				v_file = rs.getString("voice_file");
											
				info = new AlarmDTO(a_number, a_time, p_id, c_number, i_file, v_file);
				list.add(info);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public ArrayList<AlarmDTO> select_one(String num) {
		System.out.println("dao에서 받은 num:"+num);
		info = null;
		list = new ArrayList<AlarmDTO>();

		try {
			getConnection();

			String sql = "select * from ALARM where alarm_number=?";
			psmt = conn.prepareStatement(sql);
			System.out.println(num.length());
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			System.out.println("체크"+rs.next());
			
			if (num.length()>0) {
				System.out.println("반복문 입장");
				a_number = rs.getString("alarm_number");
				a_time = rs.getString("alarm_time");
				p_id = rs.getString("parents_id");
				c_number = rs.getString("children_number");
				i_file = rs.getString("img_file");
				v_file = rs.getString("voice_file");
											
				info = new AlarmDTO(a_number, a_time, p_id, c_number, i_file, v_file);
				list.add(info);
			}else {
				System.out.println("에러");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public int insert_one(AlarmDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into alarm values(alarm_seq.nextval,SYSDATE,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getP_id());
			psmt.setString(2, dto.getC_number());
			psmt.setString(3, dto.getI_file());
			psmt.setString(4, dto.getV_file());
		
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}
	public int delete(AlarmDTO dto) {
		
		int cnt = 0;
		try {
			getConnection();
			String sql = "delete from alarm where alarm_number=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getA_number());
			
		
			cnt = psmt.executeUpdate();
			System.out.println("뭐니"+cnt);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

}
