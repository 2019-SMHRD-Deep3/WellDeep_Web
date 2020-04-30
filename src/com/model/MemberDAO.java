package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private String p_id;
	private String p_pw;
	private String p_addr;
	private String p_phone;
	private String p_name;

	private static MemberDAO dao;

	public static MemberDAO getDAO() {
		if (dao == null) {
			dao = new MemberDAO();
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

	public int join(MemberDTO dto) {
		int cnt = 0;
		try {
			getConnection();
			String sql = "insert into parents values(?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getP_id());
			psmt.setString(2, dto.getP_pw());
			psmt.setString(3, dto.getP_addr());
			psmt.setString(4, dto.getP_phone());
			psmt.setString(5, dto.getP_name());
			psmt.setString(6, dto.getP_sex());

			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return cnt;
	}

	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;

		String p_id = null;
		String p_pw = null;
		String p_addr = null;
		String p_phone = null;
		String p_name = null;
		String p_sex = null;

		String c_num = null;
		String c_name = null;
		String c_sex = null;
		String c_age = null;
		String c_photo = null;

		try {
			getConnection();

			String sql = "select * from parents where perents_id=? and perents_pw=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getP_id());
			psmt.setString(2, dto.getP_pw());
			rs = psmt.executeQuery();

			if (rs.next()) {
				// rs.getString(1);
				// rs.getString(2);
				// rs.getString(3);
				p_id = rs.getString("perents_id");
				p_pw = rs.getString("perents_pw");
				p_addr = rs.getString("perents_addr");
				p_phone = rs.getString("perents_phone");
				p_name = rs.getString("perents_name");
				p_sex = rs.getString("perents_sex");

				sql = "select * from children where perents_id=?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, dto.getP_id());
				rs = psmt.executeQuery();

				if (rs.next()) {
					c_num = rs.getString("children_number");
					c_name = rs.getString("children_name");
					c_sex = rs.getString("children_sex");
					c_age = rs.getString("children_age");
					c_photo = rs.getString("children_photo");

				}

//				System.out.println(p_id);
//				System.out.println(p_pw);
//				System.out.println(p_email);
//				System.out.println(l_grade);
				info = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name, p_sex, c_num, c_name, c_sex, c_age, c_photo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return info;
	}

	// 수정할 이름 찾기
	public MemberDTO search(String id) {
		MemberDTO info = null;

		try {
			getConnection();

			String sql = "select * from parents where perents_id=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);

			rs = psmt.executeQuery();

			if (rs.next()) {

				p_id = rs.getString("perents_id");
				p_pw = rs.getString("perents_pw");
				p_addr = rs.getString("perents_addr");
				p_phone = rs.getString("perents_phone");
				p_name = rs.getString("perents_name");
								
				info = new MemberDTO(p_id, p_pw, p_addr, p_phone, p_name);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return info;
	}

	// 수정
	public MemberDTO updateUser(String id, String pw, String addr, String phone, String name, String c_photo, String c_name, String c_age, String c_sex) {
		MemberDTO modify_info = new MemberDTO(id, pw, addr, phone, name, c_photo, c_name, c_age, c_sex);
		int cnt = 0;

		try {
			if (pw != null) {
				getConnection();
				String sql = "update parents set perents_pw=? where perents_id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, pw);
				psmt.setString(2, id);
				cnt = psmt.executeUpdate();
				if (cnt > 0) {

					modify_info.setP_pw(pw);
				}

			}
			if (name != null) {
				getConnection();
				String sql = "update parents set perents_name=? where perents_id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, name);
				psmt.setString(2, id);
				cnt = psmt.executeUpdate();
				if (cnt > 0) {

					modify_info.setP_name(name);
				}

			}
			if (addr != null) {
				getConnection();
				String sql = "update parents set perents_addr=? where perents_id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, addr);
				psmt.setString(2, id);
				cnt = psmt.executeUpdate();
				if (cnt > 0) {

					modify_info.setP_addr(addr);

				}
			}
			if (phone != null) {
				getConnection();
				String sql = "update parents set perents_phone=? where perents_id = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, phone);
				psmt.setString(2, id);
				cnt = psmt.executeUpdate();
				if (cnt > 0) {

					modify_info.setP_phone(phone);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return modify_info;
	}

	public int updateAndroid(String id, String pw, String addr, String tel, String name, String sex) {
		int cnt = 0;

		try {
				getConnection();
				String sql = "update parents set perents_pw=?, perents_addr=?, perents_phone=?, perents_name = ?, "+
				"perents_sex = ? where perents_id = ?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, pw);
				psmt.setString(2, addr);
				psmt.setString(3, tel);
				psmt.setString(4, name);
				psmt.setString(5, sex);
				psmt.setString(6, id);
				
				cnt = psmt.executeUpdate();
				System.out.println(cnt);
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
}
