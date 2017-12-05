package com.emusicstore.model;

public class CartItem 
{
	private Product product;
	private int quantity;
	private double totalPrice;


	public CartItem() {
		
	}

	/**
	 * @param product
	 * @param quantity
	 * @param totalPrice
	 */
	public CartItem(Product product) {
/*		this.product = product;
		this.quantity = quantity;
		this.totalPrice = totalPrice;*/
		
		this.product = product;
		this.quantity = 1;
		this.totalPrice = product.getProductPrice();
	}

/*	public CartItem(Product product2) {
		// TODO Auto-generated constructor stub
	}*/

	/**
	 * @return the product
	 */
	public Product getProduct() {
		return product;
	}

	/**
	 * @param product the product to set
	 */
	public void setProduct(Product product) {
		this.product = product;
	}

	/**
	 * @return the quantity
	 */
	public int getQuantity() {
		return quantity;
	}

	/**
	 * @param quantity the quantity to set
	 */
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	/**
	 * @return the totalPrice
	 */
	public double getTotalPrice() {
		return totalPrice;
	}

	/**
	 * @param totalPrice the totalPrice to set
	 */
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	
	
	

}
