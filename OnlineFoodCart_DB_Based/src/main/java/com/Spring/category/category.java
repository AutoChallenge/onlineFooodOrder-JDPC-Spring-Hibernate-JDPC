package com.Spring.category;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class category {
	
	@Id
	private int catid;
	private String catnm;
	private String image;
	
	
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getCatnm() {
		return catnm;
	}
	public void setCatnm(String catnm) {
		this.catnm = catnm;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	

}
