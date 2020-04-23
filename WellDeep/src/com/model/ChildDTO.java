package com.model;

public class ChildDTO {
	private String p_id;
	private String c_num;
	private String c_name;
	private String c_sex;
	private String c_age;
	private String c_photo;
	
	// 아이 정보 등록/세션
	public ChildDTO(String p_id, String c_num, String c_name, String c_sex, String c_age, String c_photo) {
		this.p_id = p_id;
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_sex = c_sex;
		this.c_age = c_age;
		this.c_photo = c_photo;
	}

	// 아이 정보 수정
	public ChildDTO(String c_num, String c_name, String c_age, String c_photo) {
		this.c_num = c_num;
		this.c_name = c_name;
		this.c_age = c_age;
		this.c_photo = c_photo;
	}

	public String getP_id() {
		return p_id;
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

	public void setP_id(String p_id) {
		this.p_id = p_id;
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

}
