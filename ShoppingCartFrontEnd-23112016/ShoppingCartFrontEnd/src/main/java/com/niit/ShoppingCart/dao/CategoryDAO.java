package com.niit.ShoppingCart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.ShoppingCart.model.Category;

@Repository("categoryDAO")
public interface CategoryDAO 
{
	public void saveOrUpdate(Category category);
	public List<Category> list() ;
	public void delete(String id);
	
	public Category getByName(String name);
	public Category getCategory(String id);

	
}
