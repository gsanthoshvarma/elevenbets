package com.tech.online.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.tech.online.model.Product;

public class ProductDAO {

	public List<Product> getProductList(){
		List<Product> productList = new ArrayList<>();
		Product product = new Product();
		product.setName("Sunrises Vs Bangalore");
		product.setPrice(new Double(1500));
		product.setCategory("Bangalore");
		product.setStatus("Won");
		product.setUnitInStock(10);
		productList.add(product);
		return productList;
	}
}
