package com.niit.ShoppingCart.dao;

import java.util.List;

import javax.validation.constraints.AssertTrue;

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

@SuppressWarnings({ "deprecation", "unused" })
@Repository("productDAO")
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	
	@Transactional
	public void saveOrUpdate(Product product)
	{
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	
	}
	
	@Transactional
	public void delete(String id)
	{
		Product producttodelete=new Product();
		producttodelete.setProduct_id(id);
		sessionFactory.getCurrentSession().delete(producttodelete);
		
	}
	
	
	@Transactional
	public Product getProduct(String id) {
		String hql = "from Product where product_id=" + "'"+ id +"'";
		@SuppressWarnings("rawtypes")
		Query query= sessionFactory.getCurrentSession().createQuery(hql); 
		@SuppressWarnings("unchecked")
		List<Product> listProduct = query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		return null;
	}
	
	
	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) 
		          sessionFactory.getCurrentSession()
				.createCriteria(Product.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
	}
	
	@Transactional
	public List<Product> somelist()
	{
		String hql = "from Product";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult(0).setMaxResults(5);
		 
		List<Product> someprolist = query.list();
		if(someprolist != null || !someprolist.isEmpty())
		{
			return someprolist;
		}
		return null;
	}
	
	
	@Transactional
	public Product getByName(String name) {
		String hql = "from Product where product_name=" + "'"+ name +"'";
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct = (List<Product>) query.list();
		
		if (listProduct != null && !listProduct.isEmpty()) {
			return listProduct.get(0);
		}
		
		return null;
	}

	@Transactional
	public List<Product> getByCatPro(String name)
	{
		String hql = "from Product where category_id =" + "'" + name + "'";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Product> catlistpro = query.list();
		
		if(catlistpro != null || !catlistpro.isEmpty())
		{
			return catlistpro;
		}
		return null;
	}
	}
