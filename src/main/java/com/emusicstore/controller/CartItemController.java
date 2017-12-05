package com.emusicstore.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/cart")
public class CartItemController 
{
	@RequestMapping
	public String get(HttpServletRequest request)
	{
		//to use the sessionId as the cartId for a 1-1 map
		return "redirect:/cart/"+request.getSession(true).getId();
	}
	
	@RequestMapping(value="/{cartId}", method=RequestMethod.GET)
	public String getCart(@PathVariable (value="cartId") String cartId, Model model)
	{
		model.addAttribute("cartid", cartId);
		
		return "cart";
	}

}
