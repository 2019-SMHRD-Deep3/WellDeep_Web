package com.model;

public class PostDTO {
	private String p_num;
	private String p_title;
	private String p_context;
	private String p_time;
	private String p_id;
	
	//게시글 등록
	public PostDTO(String p_num, String p_title, String p_context, String p_time, String p_id) {
		super();
		this.p_num = p_num;
		this.p_title = p_title;
		this.p_context = p_context;
		this.p_time = p_time;
		this.p_id = p_id;
	}
	
	public String getP_num() {
		return p_num;
	}
	public void setP_num(String p_num) {
		this.p_num = p_num;
	}
	public String getP_title() {
		return p_title;
	}
	public void setP_title(String p_title) {
		this.p_title = p_title;
	}
	public String getP_context() {
		return p_context;
	}
	public void setP_context(String p_context) {
		this.p_context = p_context;
	}
	public String getP_time() {
		return p_time;
	}
	public void setP_time(String p_time) {
		this.p_time = p_time;
	}
	public String getP_id() {
		return p_id;
	}
	public void setP_id(String p_id) {
		this.p_id = p_id;
	}
	
	
}
