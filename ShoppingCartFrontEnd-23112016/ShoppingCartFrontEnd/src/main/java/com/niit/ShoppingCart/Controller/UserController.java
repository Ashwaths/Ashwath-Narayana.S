package com.niit.ShoppingCart.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PostAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCart.dao.FeedbackDAO;
import com.niit.ShoppingCart.dao.UserDetailsDAO;
import com.niit.ShoppingCart.model.Category;
import com.niit.ShoppingCart.model.Feedback;
import com.niit.ShoppingCart.model.UserDetails;


@Controller
public class UserController {

	@Autowired
	UserDetailsDAO userDetailsDAO;
	

	@Autowired
	UserDetails userDetails;
	
	@Autowired
	private Feedback feedback;
	@Autowired
	private FeedbackDAO feedbackDAO;
	
	
	@ModelAttribute("addfeed")
	public Feedback feedmodel()
	{
		System.out.println("Create model for feedback");
		return new Feedback();
	}
	
	
	@RequestMapping("/signup")
	public ModelAndView signuppage(){
		ModelAndView mv = new ModelAndView("signup");
		return mv;
	}
	
	
	 @RequestMapping("/feedback")
	    public ModelAndView feedpage()
	    {
	    	ModelAndView mv = new ModelAndView("/feedback");
	    	return mv;
	    }
	
	@RequestMapping("/login")
	public ModelAndView loginpage()
	{
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	
	@ModelAttribute("adduser")
	public UserDetails useradd()
	{
		System.out.println("Created model for userdetails");
		return new UserDetails();
	}
	
/*-------------------------------------------SAVE FUNCTION FOR SIGNUP--------------------------------	*/
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView userregist(@ModelAttribute("adduser") UserDetails adduser)
	{
		ModelAndView mv = new ModelAndView("signup");
		
		if(userDetailsDAO.getByName(userDetails.getName()) == null)
		{
			userDetailsDAO.save(adduser);
		}
		else
		{
			mv.addObject("signuperror", "this username " + userDetails.getName() + "already exist");
		}
		
		return mv;
	}

/*---------------------------------------------SAVE FUNCTION FOR LOGIN------------------------------------------*/
	
/*	@RequestMapping(value="/userlogin")
	public ModelAndView Loginfunc(@ModelAttribute("adduser")UserDetails adduser,  @RequestParam(value="name") String name , @RequestParam(value="password")String password , HttpSession session)
	{
		System.out.println("Entered into function");
		ModelAndView mv = new ModelAndView("/homepage");
		String msg;
		
		userDetails = userDetailsDAO.isValidUser(name, password);
		
		if(userDetails==null)
		{
			msg = "Invalid user please try again";
			System.out.println("user doesnt exit");
			mv = new ModelAndView("login");
					mv.addObject("loginerrormsg", "User doesnt exist");
		}
		else
		{
			if(userDetails.getRole().equals("ROLE_ADMIN"))
			{
				mv = new ModelAndView("adminhome");
			}
			session.setAttribute("Welcome msg", userDetails.getName());
		}
		return mv;
	}
*/	

	 @RequestMapping(value = "/loginUser")
	    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
	            required = false) String logout, Model model) {
	        if (error!=null) {
	        	System.out.println("Error.....");
	            model.addAttribute("error", "...Invalid username and password");
	        }
	        	
	        if(logout!=null) {
	        	System.out.println("Logout called.....");
	            model.addAttribute("msg", "...You have been logged out");
	        }

	        return "login";
	 }
	
	 @RequestMapping(value="/addfeedback", method=RequestMethod.POST)
		public ModelAndView feedaddFunc(@ModelAttribute("addfeed")Feedback addfeed)
		{
		   feedbackDAO.save(addfeed);
		   
		   ModelAndView mv = new ModelAndView("feedback");
		   return mv;
		}	 
	 
	 
	 @RequestMapping(value = "/user")
	    public String userManagement() 
	    {
	    	System.out.println("USER CALLED.......");
	    	return "homepage";
	    }
	    
	    @RequestMapping(value = "/admin")
	    public String adminManagement() 
	    {
	    	System.out.println("ADMIN CALLED.......");
	    	return "AdminHome";
	    }
	
	    @RequestMapping(value="/403")
	    public String errorpage()
	    {
	    	System.out.println("403 Error page.......");
	    	return "403";
	    }
}
