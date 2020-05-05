package com.model;

public class ImgDTO {
	private String img_number;
	private String img_time;
	private String img_file;
	private String parents_id;
	private String children_number;
	
	public ImgDTO(String img_number, String img_time, String img_file, String parents_id, String children_number) {
		super();
		this.img_number = img_number;
		this.img_time = img_time;
		this.img_file = img_file;
		this.parents_id = parents_id;
		this.children_number = children_number;
	}

	public ImgDTO(String parents_id, String children_number, String img_file) {
		super();
		this.img_file = img_file;
		this.parents_id = parents_id;
		this.children_number = children_number;
	}

	public String getImg_number() {
		return img_number;
	}

	public void setImg_number(String img_number) {
		this.img_number = img_number;
	}

	public String getImg_time() {
		return img_time;
	}

	public void setImg_time(String img_time) {
		this.img_time = img_time;
	}

	public String getImg_file() {
		return img_file;
	}

	public void setImg_file(String img_file) {
		this.img_file = img_file;
	}

	public String getPerents_id() {
		return parents_id;
	}

	public void setPerents_id(String perents_id) {
		this.parents_id = perents_id;
	}

	public String getChildren_number() {
		return children_number;
	}

	public void setChildren_number(String children_number) {
		this.children_number = children_number;
	}
	
	

}
