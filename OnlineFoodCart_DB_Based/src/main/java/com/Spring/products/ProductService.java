package com.Spring.products;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("prdtserv")
public class ProductService 
{
	@Autowired
	ProductRepository prdtrep;
	
	public void add() {}
	public void delete() {}
	public void update() {}
	public void search() {}  // search on the basis of primary key field only
		
}
