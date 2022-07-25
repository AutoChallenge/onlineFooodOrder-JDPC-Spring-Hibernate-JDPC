package com.Spring.customers;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class customers {
	

	private String cust_nm;
	
	@Id
	private String phno;
	private String address;

	
	public String getCust_nm() {
		return cust_nm;
	}
	public void setCust_nm(String cust_nm) {
		this.cust_nm = cust_nm;
	}
	public String getPhno() {
		return phno;
	}
	public void setPhno(String phno) {
		this.phno = phno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	

}
