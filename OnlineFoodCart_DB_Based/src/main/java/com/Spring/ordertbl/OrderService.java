package com.Spring.ordertbl;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ordserv")
public class OrderService 
{
	@Autowired
	OrderRepository ordrep;
	
	public void add() {}
	public void delete() {}
	public void update() {}
	public void search() {}  // search on the basis of primary key field only
		
}