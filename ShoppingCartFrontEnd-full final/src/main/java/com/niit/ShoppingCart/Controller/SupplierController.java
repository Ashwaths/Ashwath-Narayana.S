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

import com.niit.ShoppingCart.dao.ProductDAO;
import com.niit.ShoppingCart.dao.SupplierDAO;
import com.niit.ShoppingCart.model.Category;
import com.niit.ShoppingCart.model.Product;
import com.niit.ShoppingCart.model.Supplier;

@SuppressWarnings("unused")
@Controller
public class SupplierController {

	private static Logger log = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	  private Supplier supplier;
	  
	  @Autowired
	  private SupplierDAO supplierDAO;

	  @RequestMapping("/managesuppliers")
		public ModelAndView supplierpage()
		{
			ModelAndView mv = new ModelAndView("managesuppliers");
			return mv;
		}
	  
	  @ModelAttribute("supplierpage")
		public Supplier addsupplier()
		{
			System.out.println("created model for supplier");
			return new Supplier();
		}

/*-----------------------------------------SAVE FUNCTION FOR SUPPLIER-------------------------------------------------*/

	  @RequestMapping(value="/addsupplier", method = RequestMethod.POST)
		public ModelAndView addsupfunc(@ModelAttribute("supplierpage") Supplier supplierpage)
		{
			supplierDAO.saveOrUpdate(supplierpage);
			
			ModelAndView mv = new ModelAndView("AdminHome");
			return mv;
			
		}

/*-----------------------------------------	UPDATE FUNCTION FOR SUPPLIER-----------------------------------------------------*/
		
/*		@RequestMapping("/supplier/edit/{supplier_id}")
		public String editSupplier(@PathVariable("supplier_id")String supplier_id, Model model)
		{
			System.out.println("editSupplier");
			model.addAttribute("supplier", this.supplierDAO.getSupplier(supplier_id));
			model.addAttribute("supplierList",this.supplierDAO.list());
			return "managesuppliers";
		}
*/		
	  @RequestMapping(value="/supplieredit-{supplier_id}",method = RequestMethod.GET)
		public String supeditfunc(@PathVariable("supplier_id") String supplier_id, Model model)
		{
			model.addAttribute("supplier", this.supplierDAO.getSupplier(supplier_id));
			model.addAttribute("listSupplier", this.supplierDAO.list());
			
			return "managesuppliers";
		}
		 
	  
/*------------------------------------------LIST FUNCTION FOR SUPPLIER------------------------------------------------------*/
		
/*		 @RequestMapping(value="/managesuppliers", method=RequestMethod.GET)
			public String listSupplier(Model model)
			{
				log.debug("Starting of the method listSupplier");
				System.out.println("Entered into function");
				model.addAttribute("supplier", supplier);
				model.addAttribute("supplierList", this.supplierDAO.list());
				System.out.println("Executed the function");
				log.debug("Ending of the method listSupplier");
				return "managesuppliers";
			}
*/
	  
	  @RequestMapping(value="/managesuppliers", method = RequestMethod.GET)
		public String listSupplier(Model model)
		{
			model.addAttribute("supplier", supplier);
			model.addAttribute("supplierList", this.supplierDAO.list());
			
			return "managesuppliers";
		}
	  
/*----------------------------------------------------DELETE FUNCTION FOR SUPPLIER--------------------------------------------------------------*/
		 
/*			@RequestMapping("/supplier/delete/{supplier_id}")
			public String deleteSupplier(@PathVariable("supplier_id")String supplier_id, Model model) throws Exception
			{
				try {
					 Supplier supplier = supplierDAO.getSupplier(supplier_id);
					 supplierDAO.delete(supplier_id);
					model.addAttribute("message" , "Deleted Successfully");
				} catch (Exception e) {
		            model.addAttribute("message" , e.getMessage());
		            e.printStackTrace();
				}
				return "redirect:/managesuppliers";
			}
*/

	  @RequestMapping("supplierdelete-{supplier_id}")
		public String deleteSupplier(@PathVariable("supplier_id") String supplier_id, ModelMap model) throws Exception {

			try {
				supplierDAO.delete(supplier_id);
				model.addAttribute("message", "Successfully Added");
			} catch (Exception e) {
				model.addAttribute("message", e.getMessage());
				e.printStackTrace();
			}
			// redirectAttrs.addFlashAttribute(arg0, arg1)
			return "AdminHome";
		}

}
