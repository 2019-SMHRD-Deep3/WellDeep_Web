package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ChildListDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private String c_number;
	private String c_name;
	private String c_sex;
	private String c_age;
	private String c_photo;
	private String p_id;
	
	ChildListDTO info;
	ArrayList<ChildListDTO> list;

	private static ChildListDAO dao;

	public static ChildListDAO getDAO() {
		if (dao == null) {
			dao = new ChildListDAO();
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
	
	public ArrayList<ChildListDTO> select(String id) {
		
		info = null;
		list = new ArrayList<ChildListDTO>();

		try {
			getConnection();

			String sql = "select * from children where perents_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			//System.out.println(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {

				c_number = rs.getString("children_number");
				c_name = rs.getString("children_name");
				c_sex = rs.getString("children_sex");
				c_age = rs.getString("children_age");
				c_photo = rs.getString("children_photo");
				p_id = rs.getString("perents_id");
			
											
				info = new ChildListDTO(c_number, c_name, c_sex, c_age, c_photo, p_id);
				list.add(info);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	public String selectchild(String name) {
		System.out.println("dao에서 받은name:"+name);
		info = null;
		list = new ArrayList<ChildListDTO>();

		try {
			getConnection();

			String sql = "select * from children where children_name=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, name);
			//System.out.println(sql);

			rs = psmt.executeQuery();

			while (rs.next()) {
				c_photo = rs.getString("children_photo");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return c_photo;
	}
	

}
