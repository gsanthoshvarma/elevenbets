package com.tech.online.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tech.online.dao.ProductDAO;
import com.tech.online.model.Product;

@Controller
public class ProductController {

	@RequestMapping("/productList")
	public String getProductList(Model model) {
		System.out.println("Product list");
		ProductDAO dao = new ProductDAO();
		List<Product> list = dao.getProductList();
		Product product = list.get(0);
		model.addAttribute(product);
	    return "productList";
	}
	

	@RequestMapping("/productList12")
	public ModelAndView getProductList1(@RequestParam("user") String name,@RequestParam("pwd") String password) {
		System.out.println("Product list");
		ProductDAO dao = new ProductDAO();
		List<Product> list = dao.getProductList();
		Product product = list.get(0);
		/*model.addAttribute(product);*/
		ModelAndView modelView = new ModelAndView("action_page", "messageq", name+"  "+password+"Authentication Successfull");
	    return modelView;
	}
	
	@RequestMapping("/productList1")
	public String getProductList4(Model model) {
		System.out.println("Product list");
		ProductDAO dao = new ProductDAO();
		List<Product> list = dao.getProductList();
		Product product = list.get(0);
		model.addAttribute(product);		
	    return "Tableformat";
	}
	
}
