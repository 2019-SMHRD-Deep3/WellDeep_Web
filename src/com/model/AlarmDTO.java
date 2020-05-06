package com.model;

public class AlarmDTO {
	private String a_number;
	private String a_time;
	private String p_id;
	private String c_number;
	private String i_file;
	private String v_file;
	
	public AlarmDTO(String a_number, String a_time, String p_id, String c_number, String i_file, String v_file) {
		super();
		this.a_number = a_number;
		this.a_time = a_time;
		this.p_id = p_id;
		this.c_number = c_number;
		this.i_file = i_file;
		this.v_file = v_file;
	}

	public AlarmDTO(String p_id, String c_number, String i_file, String v_file) {
		super();
		this.p_id = p_id;
		this.c_number = c_number;
		this.i_file = i_file;
		this.v_file = v_file;
	}
	// 알람 삭제
	public AlarmDTO(String a_number) {
		this.a_number = a_number;
	}
	

	public String getA_number() {
		return a_number;
	}

	public void setA_number(String a_number) {
		this.a_number = a_number;
	}

	public String getA_time() {
		return a_time;
	}

	public void setA_time(String a_time) {
		this.a_time = a_time;
	}

	public String getP_id() {
		return p_id;
	}

	public void setP_id(String p_id) {
		this.p_id = p_id;
	}

	public String getC_number() {
		return c_number;
	}

	public void setC_number(String c_number) {
		this.c_number = c_number;
	}

	public String getI_file() {
		return i_file;
	}

	public void setI_file(String i_file) {
		this.i_file = i_file;
	}

	public String getV_file() {
		return v_file;
	}

	public void setV_file(String v_file) {
		this.v_file = v_file;
	}
	
}
