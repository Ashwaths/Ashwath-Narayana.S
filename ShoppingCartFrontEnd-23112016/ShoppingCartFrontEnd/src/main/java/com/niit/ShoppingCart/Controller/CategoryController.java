package com.niit.ShoppingCart.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCart.dao.CategoryDAO;
import com.niit.ShoppingCart.model.Category;

@Controller
public class CategoryController {

	private static Logger log = LoggerFactory.getLogger(CategoryController.class);
	
	@Autowired
	private Category category;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
/*	@ModelAttribute("addcat")
	public Category catmodel()
	{
		System.out.println("created category model");
		return new Category();
	}
*/
	
	
	@RequestMapping("/managecategories")
	public ModelAndView catpage()
	{
		ModelAndView mv = new ModelAndView("managecategories");
		return mv;
	}
	
/*	@RequestMapping("/#category")
	public ModelAndView listCategory()
	{
		ModelAndView mv = new ModelAndView("category");
		return mv;
	}*/
	
	@ModelAttribute("categorypage")
	public Category addcat()
	{
		System.out.println("Created model for Category");
		return new Category();
	}
	
/*-------------------------SAVE FUNCTION FOR CATEGORY-----------------------------------*/
	
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	public ModelAndView categoryaddFunc(@ModelAttribute("categorypage")Category categorypage)
	{
	   categoryDAO.saveOrUpdate(categorypage);
	   
	   ModelAndView mv = new ModelAndView("AdminHome");
	   return mv;
	}


/*--------------------------------------UPDATE FUNCTION FOR CATEGORY---------------------------------------*/
	

	@RequestMapping(value="/categoryedit-{category_id}",method=RequestMethod.GET)
	public String editCategory(@PathVariable("category_id")String category_id, Model model)
	{
		System.out.println("editCategory");
		model.addAttribute("category", this.categoryDAO.getCategory(category_id));
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "managecategories";
	}

/*--------------------------------------------DELETE FUNCTION FOR CATEGORY------------------------------------------------*/

	@RequestMapping(value="categorydelete-{category_id}",method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("category_id") String category_id, ModelMap model) throws Exception {

		try {
			categoryDAO.delete(category_id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "AdminHome";
	}


/*---------------------------------------LIST FUNCTION FOR CATEGORY----------------------------------------*/
	
	@RequestMapping(value="/managecategories", method = RequestMethod.GET)
	public String listCategories(Model model)
	{
		model.addAttribute("category", category);
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		return "managecategories";
	}

}
