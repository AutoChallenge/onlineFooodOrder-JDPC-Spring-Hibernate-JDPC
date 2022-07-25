package com.Spring.dailytrans;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("dailytrserv")
public class DailytransService
{
	@Autowired
	DailytransRepository dailytrrep;
	
	public void add() {}
	public void delete() {}
	public void update() {}
	public void search() {}  // search on the basis of primary key field only
		
}