package com.Spring.dailytrans;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.Spring.customers.customers;

@Repository
public interface DailytransRepository extends JpaRepository<dailytrans, Integer>
{
		
}
