package com.Spring.dailytrans;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class dailytrans {
	
	private int ordid;
	private int prid;
	private int qty;
	
	@Id
	private int transid;
	public int getOrdid() {
		return ordid;
	}
	public void setOrdid(int ordid) {
		this.ordid = ordid;
	}
	public int getPrid() {
		return prid;
	}
	public void setPrid(int prid) {
		this.prid = prid;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public int getTransid() {
		return transid;
	}
	public void setTransid(int transid) {
		this.transid = transid;
	}
	
	

}
