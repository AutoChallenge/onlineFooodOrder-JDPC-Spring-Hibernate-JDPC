package com.Spring.customers;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("custserv")
public class CustomerService 
{
	@Autowired
	CustomerRepository custrep;
	
	public void add() {}
	public void delete() {}
	public void update() {}
	public void search() {}  // search on the basis of primary key field only
		
}