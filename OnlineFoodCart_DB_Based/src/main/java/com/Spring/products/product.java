package com.Spring.products;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class product {
	
	
	private int catid;
	private String description;
	private String image;
	private double price;
	
	@Id
	private int prid;
	private String prnm;
	public int getCatid() {
		return catid;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPrid() {
		return prid;
	}
	public void setPrid(int prid) {
		this.prid = prid;
	}
	public String getPrnm() {
		return prnm;
	}
	public void setPrnm(String prnm) {
		this.prnm = prnm;
	}
	
	

}
