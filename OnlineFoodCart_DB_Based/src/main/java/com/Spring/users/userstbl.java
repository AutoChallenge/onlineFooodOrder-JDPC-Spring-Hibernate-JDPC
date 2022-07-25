package com.Spring.users;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class userstbl {
	
	
	@Id
	private String username;
	private String pwd;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	

}
