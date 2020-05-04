package com.niit.ShoppingCart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.ShoppingCart.model.Feedback;

@Repository("feedbackDAO")
public interface FeedbackDAO {

public boolean save(Feedback feedback);
	
	public List<Feedback> feedlist();
	public List<Feedback> somefeed();

}