package com.model;

public class RecordingDTO {
	private String r_number;
	private String r_file;
	private String r_time;
	private String p_id;
	private String c_number;
	private String i_number;
	private String v_number;
	
	public RecordingDTO(String r_number, String r_file, String r_time, String p_id, 
			String c_number, String i_number, String v_number) {
		
		this.r_number = r_number;
		this.r_file = r_file;
		this.r_time = r_time;
		this.p_id = p_id;
		this.c_number = c_number;
		this.i_number = i_number;
		this.v_number = v_number;
	}
	
	public String getR_number() {
		return r_number;
	}
	public void setR_number(String r_number) {
		this.r_number = r_number;
	}
	public String getR_file() {
		return r_file;
	}
	public void setR_file(String r_file) {
		this.r_file = r_file;
	}
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
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
	public String getI_number() {
		return i_number;
	}
	public void setI_number(String i_number) {
		this.i_number = i_number;
	}
	public String getV_number() {
		return v_number;
	}
	public void setV_number(String v_number) {
		this.v_number = v_number;
	}
	
	
}
