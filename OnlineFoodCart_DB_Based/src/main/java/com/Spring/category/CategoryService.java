package com.Spring.category;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("catgry")
public class CategoryService 
{
	@Autowired
	CategoryRepository catg;
	
	public List<category> allcat()
	{
		return catg.findAll();
	}
	
	public void add_category(category c)
	{
		catg.save(c);
	}
	
	
	public category findID(int id)
	{
	
		return catg.findById(id).get();
	}
	
	
	public void updatecat(category c)
	{
		catg.save(c);		
	}
	
	
	public void deleteId(int id)
	{
		catg.deleteById(id);
	}
		
}


