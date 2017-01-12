package com.niit.ShoppingCart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.ShoppingCart.model.Supplier;

@Repository("supplierDAO")
public interface SupplierDAO {

	public void saveOrUpdate(Supplier supplier);
	public List<Supplier> list();
	public void delete(String id);
	
	public Supplier getByName(String name);
	public Supplier getSupplier(String id);

}
