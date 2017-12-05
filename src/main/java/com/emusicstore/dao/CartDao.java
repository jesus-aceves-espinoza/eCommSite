package com.emusicstore.dao;

import org.springframework.stereotype.Repository;

import com.emusicstore.model.Cart;

@Repository
public interface CartDao 
{
	Cart create(Cart cart);
	
	Cart read(String cartId);
	
	void update(String cartId, Cart cart);
	
	void delete(String cartId);

}
