package com.model;

public class MemberDTO {
	private String p_id;
	private String p_pw;
	private String p_addr;
	private String p_phone;
	private String p_name;
	private String p_sex;
	private String c_cnt; // 회원가입, 아이 정보 등록 생성자 구분
	
	private String c_num;
	private String c_name;
	private String c_sex;
	private String c_age;
	private String c_photo;
	
	// 회원가입 객체
	public MemberDTO(String p_id, String p_pw, String p_addr, String p_phone, String p_name, String p_sex, String c_cnt) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_addr = p_addr;
		this.p_phone = p_phone;
		this.p_name = p_name;
		this.p_sex = p_sex;
		this.c_cnt = c_cnt;
	}
	
	// 로그인
	public MemberDTO(String p_id, String p_pw) {
		this.p_id = p_id;
		this.p_pw = p_pw;
	}
	
	// 로그인세션
	public MemberDTO(String p_id, String p_pw, String p_addr, String p_phone, String p_name, String p_sex, String c_num, String c_name, String c_sex, String c_age, String c_photo) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_addr = p_addr;
		this.p_phone = p_phone;
		this.p_name = p_name;
		this.p_sex = p_sex;
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_sex = c_sex;
		this.c_age = c_age;
		this.c_photo = c_photo;
	}
	
	// 정보 검색
	public MemberDTO(String p_id, String p_pw, String p_addr, String p_phone, String p_name) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_addr = p_addr;
		this.p_phone = p_phone;
		this.p_name = p_name;
	}
	
	// 정보 수정
	public MemberDTO(String p_id, String p_pw, String p_addr, String p_phone, String p_name, String c_photo, String c_name, String c_age) {
		this.p_id = p_id;
		this.p_pw = p_pw;
		this.p_addr = p_addr;
		this.p_phone = p_phone;
		this.p_name = p_name;
		this.c_photo = c_photo;
		this.c_name = c_name;
		this.c_age = c_age;
	}
	
	// 아이 정보 등록
	public MemberDTO(String p_id, String c_num, String c_name, String c_sex, String c_age, String c_photo) {
		this.p_id = p_id;
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_sex = c_sex;
		this.c_age = c_age;
		this.c_photo = c_photo;
	}
	
	public String getP_id() {
		return p_id;
	}


	public String getP_pw() {
		return p_pw;
	}


	public String getP_addr() {
		return p_addr;
	}


	public String getP_phone() {
		return p_phone;
	}


	public String getP_name() {
		return p_name;
	}


	public String getP_sex() {
		return p_sex;
	}


	public void setP_id(String p_id) {
		this.p_id = p_id;
	}


	public void setP_pw(String p_pw) {
		this.p_pw = p_pw;
	}


	public void setP_addr(String p_addr) {
		this.p_addr = p_addr;
	}


	public void setP_phone(String p_phone) {
		this.p_phone = p_phone;
	}


	public void setP_name(String p_name) {
		this.p_name = p_name;
	}


	public void setP_sex(String p_sex) {
		this.p_sex = p_sex;
	}

	public String getC_num() {
		return c_num;
	}

	public String getC_name() {
		return c_name;
	}

	public String getC_sex() {
		return c_sex;
	}

	public String getC_age() {
		return c_age;
	}

	public String getC_photo() {
		return c_photo;
	}

	public void setC_num(String c_num) {
		this.c_num = c_num;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public void setC_sex(String c_sex) {
		this.c_sex = c_sex;
	}

	public void setC_age(String c_age) {
		this.c_age = c_age;
	}

	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}

	public String getC_cnt() {
		return c_cnt;
	}

	public void setC_cnt(String c_cnt) {
		this.c_cnt = c_cnt;
	}
	
}
