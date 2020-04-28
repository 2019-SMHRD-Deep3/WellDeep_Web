package com.model;

public class ChildListDTO {

	private String c_number;
	private String c_name;
	private String c_sex;
	private String c_age;
	private String c_photo;
	private String p_id;
	
	public ChildListDTO(String c_number, String c_name, String c_sex, String c_age, String c_photo, String p_id) {
		super();
		this.c_number = c_number;
		this.c_name = c_name;
		this.c_sex = c_sex;
		this.c_age = c_age;
		this.c_photo = c_photo;
		this.p_id = p_id;
	}

	public String getC_number() {
		return c_number;
	}

	public void setC_number(String c_number) {
		this.c_number = c_number;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_sex() {
		return c_sex;
	}

	public void setC_sex(String c_sex) {
		this.c_sex = c_sex;
	}

	public String getC_age() {
		return c_age;
	}

	public void setC_age(String c_age) {
		this.c_age = c_age;
	}

	public String getC_photo() {
		return c_photo;
	}

	public void setC_photo(String c_photo) {
		this.c_photo = c_photo;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	
	
}
