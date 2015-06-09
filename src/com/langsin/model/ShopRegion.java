package com.langsin.model;

public class ShopRegion {

	private int id;
	private int regionid;
	private String region;
	private int fatherid;
	private String jianpin;
	private String quanpin;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRegionid() {
		return regionid;
	}
	public void setRegionid(int regionid) {
		this.regionid = regionid;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public int getFatherid() {
		return fatherid;
	}
	public void setFatherid(int fatherid) {
		this.fatherid = fatherid;
	}
	public String getJianpin() {
		return jianpin;
	}
	public void setJianpin(String jianpin) {
		this.jianpin = jianpin;
	}
	public String getQuanpin() {
		return quanpin;
	}
	public void setQuanpin(String quanpin) {
		this.quanpin = quanpin;
	}
	
}
