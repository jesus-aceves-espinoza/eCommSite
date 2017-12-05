package com.emusicstore.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.emusicstore.model.Product;

@Repository
public interface ProductDao 
{
	void addProduct(Product product);
	
    void editProduct(Product product);

	Product getProductById(String id);
	
	List<Product> getAllProducts();
	
	void deleteProduct(String id);
}
