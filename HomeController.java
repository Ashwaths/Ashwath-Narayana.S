package com.niit.ShoppingCart.Controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCart.dao.CategoryDAO;
import com.niit.ShoppingCart.dao.FeedbackDAO;
import com.niit.ShoppingCart.dao.ProductDAO;
//import com.niit.ShoppingCart.dao.UserDetailsDAO;
//import com.niit.ShoppingCart.dao.UserDetailsDAO;
import com.niit.ShoppingCart.model.Category;
import com.niit.ShoppingCart.model.Feedback;
import com.niit.ShoppingCart.model.Product;

@SuppressWarnings("unused")
@Controller
public class HomeController {

	@Autowired
	private Product product;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Feedback feedback;
	
	@Autowired
	private FeedbackDAO feedbackDAO;
	
	Logger log = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private CategoryDAO CategoryDAO;
	
	@Autowired
	private Category Category;
	
	
	@RequestMapping(value="/adminfeedback" , method = RequestMethod.GET)
	public String adminfeedback(Model model)
	{
		model.addAttribute("feedback", feedback);
		model.addAttribute("somefeedlist", this.feedbackDAO.somefeed());
		model.addAttribute("feedback", this.feedbackDAO.feedlist());
		return "adminfeedback";
	}
	
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home(Model model)
	{
		model.addAttribute("product", product);
		model.addAttribute("hproList", this.productDAO.somelist());
		model.addAttribute("hcatlist", this.CategoryDAO.list());
		return "homepage";
	}
	
	
	
	@RequestMapping("/homepage")
	public String  homepage(Model model)
	{
		model.addAttribute("product", product);
		model.addAttribute("hproList", this.productDAO.somelist());
		model.addAttribute("hcatlist", this.CategoryDAO.list());
		return "homepage";

	}
	

	
	@RequestMapping("/aboutus")
	public ModelAndView aboutus()
	{
		ModelAndView mv = new ModelAndView("/aboutus");
		return mv;
	}
	
	
	@RequestMapping("/electronics")
	public ModelAndView electronics()
	{
		ModelAndView mv = new ModelAndView("/electronics");
		return mv;
	}
	
	@RequestMapping(value="/admin", method = RequestMethod.GET)
	public String adminhome(Model model) 
	{
		model.addAttribute("product", product);
		model.addAttribute("feedback", feedback);
		model.addAttribute("somefeeds", this.feedbackDAO.somefeed());
		model.addAttribute("adminpageprolist", this.productDAO.somelist());

		return "AdminHome";
	
	}

	
	
	
	/*@RequestMapping("/AdminHome")
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("/AdminHome");
		return mv;
	}*/
	
	@RequestMapping("/sell")
	public ModelAndView sell()
	{
		ModelAndView mv = new ModelAndView("/sell");
		return mv;
	}
	
	@RequestMapping("/yourorders")
	public ModelAndView yourorders()
	{
		ModelAndView mv = new ModelAndView("/yourorders");
		return mv;
	}
	
	@RequestMapping("/youraccount")
	public ModelAndView youraccount()
	{
		ModelAndView mv = new ModelAndView("/youraccount");
		return mv;
	}
	
	@RequestMapping("/watches")
	public ModelAndView watches()
	{
		ModelAndView mv = new ModelAndView("/watches");
		return mv;
	}
	
	@RequestMapping("/shoes")
	public ModelAndView shoes()
	{
		ModelAndView  mv = new ModelAndView("/shoes");
		return mv;
	}
	
	@RequestMapping("/bags")
	public ModelAndView bags()
	{
		ModelAndView mv = new ModelAndView("/bags");
		return mv;
	}
	
	@RequestMapping("/fashion")
	public ModelAndView skartfashion()
	{
		ModelAndView mv = new ModelAndView("/fashion");
		return mv;
	}
	
	@RequestMapping("/wishlist")
	public ModelAndView wishlist()
	{
		ModelAndView mv = new ModelAndView("/wishlist");
		return mv;
	}
	
	@RequestMapping("/customerservice")
	public ModelAndView customerservice()
	{
		ModelAndView mv = new ModelAndView("/customerservice");
		return mv;
	}
	
	@RequestMapping("/cart")
	public ModelAndView cart()
	{
		ModelAndView mv = new ModelAndView("/cart");
		return mv;
	}

    @RequestMapping(value="/homepro{product_id}",method = RequestMethod.GET)
    public String homecatprod(@PathVariable("product_id")String product_id, Model model)
    {
    	model.addAttribute("homecatpro", this.productDAO.getProduct(product_id));
    	return "prodetails";
    }

    @RequestMapping(value="/category{category_id}",method = RequestMethod.GET)
    public String catdisplayprod(@PathVariable("category_id")String category_id, Model model)
    {
    	model.addAttribute("product", product);
    	model.addAttribute("caprolists", this.productDAO.getByCatPro(category_id));
    	return "categorypage";
    }


   
}



