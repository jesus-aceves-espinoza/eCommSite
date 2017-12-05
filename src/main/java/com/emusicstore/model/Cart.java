package com.emusicstore.model;

import java.util.HashMap;
import java.util.Map;



public class Cart 
{
	private String cartId;
	private Map<String, CartItem> cartItems;
	private double grandTotal;
	
	private Cart() {
		
		cartItems = new HashMap<String, CartItem>();
		grandTotal=0;		
		
	}
	
	public Cart(String cartId) {
		this();
		this.cartId=cartId;
	}

	/**
	 * @return the cartId
	 */
	public String getCartId() {
		return cartId;
	}

	/**
	 * @param cartId the cartId to set
	 */
	public void setCartId(String cartId) {
		this.cartId = cartId;
	}

	/**
	 * @return the cartItems
	 */
	public Map<String, CartItem> getCartItems() {
		return cartItems;
	}

	/**
	 * @param cartItems the cartItems to set
	 */
	public void setCartItems(Map<String, CartItem> cartItems) {
		this.cartItems = cartItems;
	}

	/**
	 * @return the grandTotal
	 */
	public double getGrandTotal() {
		return grandTotal;
	}

	/**
	 * @param grandTotal the grandTotal to set
	 */
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	
	/**
	 * 
	 * @param item
	 */
	public void addCartItem(CartItem item)
	{
		String productId = item.getProduct().getProductId();
		
		if(cartItems.containsKey(productId))
		{
			CartItem existingCartItem = cartItems.get(productId);
			existingCartItem.setQuantity(existingCartItem.getQuantity()+item.getQuantity());
			cartItems.put(productId, existingCartItem);
		}else {
			cartItems.put(productId, item);
			
		}
		
		updateGrandTotal();
	}
	
	/**
	 * 
	 * @param item
	 */
	public void removeCartItem(CartItem item) {
		String productId= item.getProduct().getProductId();
		cartItems.remove(productId);
		
		updateGrandTotal();
	}

	/**
	 * 
	 */
	private void updateGrandTotal() {
		grandTotal =0;
		for(CartItem item : cartItems.values())
		{
			grandTotal = grandTotal + item.getTotalPrice();
		}
	}
}







