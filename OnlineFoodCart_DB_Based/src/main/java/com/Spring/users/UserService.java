package com.Spring.users;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("usrserv")
public class UserService 
{
	@Autowired
	UsersRepository usrrep;
	
	public void add() {}
	public void delete() {}
	public void update() {}
	public void search() {}  // search on the basis of primary key field only
	
	public Optional<userstbl> searchByname(String nm)
	{
			return usrrep.findById(nm);
	}
	
		
}