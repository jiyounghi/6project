package com.VO;

public class BreadVO {
	private int b_seq;
	private String b_category;
	private String b_name;
	private String b_desc;
	private String b_img;
	private int b_count;
	
	public int getB_seq() {
		return b_seq;
	}
	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}
	public String getB_category() {
		return b_category;
	}
	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_desc() {
		return b_desc;
	}
	public void setB_desc(String b_desc) {
		this.b_desc = b_desc;
	}
	public String getB_img() {
		return b_img;
	}
	public void setB_img(String b_img) {
		this.b_img = b_img;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	
	public BreadVO(int b_seq, String b_category, String b_name, String b_img, int b_count) {
		super();
		this.b_seq = b_seq;
		this.b_category = b_category;
		this.b_name = b_name;
		this.b_img = b_img;
		this.b_count = b_count;
	}
	
	public BreadVO(String b_category, int b_count) {
		super();
		this.b_category = b_category;
		this.b_count = b_count;
	}
}
