package com.niit.ShoppingCart.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.model.Category;
import com.niit.ShoppingCart.model.Product;
import com.niit.ShoppingCart.model.Supplier;

@SuppressWarnings({ "unused", "deprecation" })
@Repository("supplierDAO")
@EnableTransactionManagement
public class SupplierDAOImpl implements SupplierDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	@Transactional
	public void saveOrUpdate(Supplier supplier)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	
	@Transactional
	public List<Supplier> list()
	{
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = sessionFactory
				.getCurrentSession().createCriteria(Supplier.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		
		return listSupplier;
	}
	
	
	@SuppressWarnings("null")
	@Transactional
	public Supplier getSupplier(String id)
	{
		String hql = " from Supplier where supplier_id = " + "'" + id + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = query.list();
		
		if(listSupplier!=null || !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return null;
	}
	
	
	@SuppressWarnings("null")
	@Transactional
	public Supplier getByName(String name)
	{
		String hql = " from Supplier where supplier_name = " + "'" + name + "'";
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier = query.list();
		
		if(listSupplier!=null || !listSupplier.isEmpty())
		{
			return listSupplier.get(0);
		}
		return null;
	}

	
	@Transactional
	public void delete(String id)
	{
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setSupplier_id(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);
	}

}
