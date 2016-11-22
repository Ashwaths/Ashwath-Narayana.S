package com.niit.ShoppingCart.Controller;

import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.ShoppingCart.dao.CategoryDAO;
import com.niit.ShoppingCart.dao.ProductDAO;
import com.niit.ShoppingCart.dao.SupplierDAO;
import com.niit.ShoppingCart.model.Category;
import com.niit.ShoppingCart.model.Product;
import com.niit.ShoppingCart.model.Supplier;
import com.niit.ShoppingCart.util.FileUtil;
import com.niit.ShoppingCart.util.Util;

@SuppressWarnings("unused")
@Controller
public class ProductController {

	private static Logger log = LoggerFactory.getLogger(ProductController.class);

  @Autowired
  private Product product;
  
  @Autowired
  private ProductDAO productDAO;
  
  @Autowired
  private Category category;
  
  @Autowired
  private CategoryDAO categoryDAO;
  
  @Autowired
  private Supplier supplier;
  
  @Autowired
  private SupplierDAO supplierDAO;
  
  private Path path;
  
 // private String path = "D:\\ShoppingCartFrontEnd\\img";
  
  @RequestMapping("/manageproducts")
	public ModelAndView prodpage()
	{
		ModelAndView mv = new ModelAndView("manageproducts");
		return mv;
	}
  
  @ModelAttribute("product")
	public Product addproduct()
	{
		System.out.println("created model for product");
		return new Product();
	}
	

/*-------------------------SAVE FUNCTION FOR PRODUCT-----------------------------------*/

	@RequestMapping(value = "/productadd", method = RequestMethod.POST)
	public String addprofunc(@ModelAttribute("product") Product product, HttpServletRequest request)
	{
		
//		Util util=new Util();
//		String id=util.replace(product.getProduct_id(), ",", "");
//		product.setProduct_id(id);
		
		
		Category category = categoryDAO.getByName(product.getCategory().getCategory_name());
		categoryDAO.saveOrUpdate(category);
		
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getSupplier_name());
		supplierDAO.saveOrUpdate(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getCategory_id());
		product.setSupplier_id(supplier.getSupplier_id());
		productDAO.saveOrUpdate(product);

		
		
		MultipartFile file=product.getImage();
		/**/
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		/*path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getPro_id()+".jpg");*/
		path = Paths.get(rootDirectory + "\\resources\\image\\" + product.getProduct_id() + ".jpg");
		
		if(file!=null && !file.isEmpty()){
			try{
				file.transferTo(new File(path.toString()));
				System.out.println("Image Uploaded to Product.....");
			}catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("image saving failed ",e);
			}
		}
		
		System.out.println("path converting to string");
		FileUtil.upload(path.toString(), file, product.getProduct_id() + ".jpg");
		System.out.println("path converted to string" + product.getProduct_id());
		
		return "redirect:/manageproducts";
	}

	

	/*@RequestMapping(value="/manageproducts", method = RequestMethod.GET)
	public String listproduct(Model model, RedirectAttributes redirectAttributes)
	{
		  model.addAttribute("product", new Product());
		  model.addAttribute("category", new Category());
		  model.addAttribute("supplier", new Supplier());
		  model.addAttribute("productList", this.productDAO.list());
		  model.addAttribute("categoryList", this.categoryDAO.list());
		  model.addAttribute("supplierList", this.supplierDAO.list());
		 
		return "manageproducts";
	}*/

	
	@RequestMapping("productdelete-{product_id}")
	public String deleteProduct(@PathVariable("product_id") String product_id, ModelMap model) throws Exception {

		try {
			productDAO.delete(product_id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "manageproducts";
	}

	
	
 /*------------------------------------------------EDIT FUNCTION FOR PRODUCT-----------------------------------------------------------------------*/

@RequestMapping(value="/productedit-{product_id}",method = RequestMethod.GET)
	public String proeditfunc(@PathVariable("product_id") String product_id, Model model)
	{
		model.addAttribute("product", this.productDAO.getProduct(product_id));
		model.addAttribute("listProduct", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		
		return "manageproducts";
	}




@RequestMapping(value = "/productdetail-{product_id}")
public String getSelectedProduct(@PathVariable("product_id") String product_id, Model model,
		RedirectAttributes redirectAttributes) {
	
	model.addAttribute("product", new Product());
	  model.addAttribute("category", new Category());
	  model.addAttribute("supplier", new Supplier());
	  model.addAttribute("productList", this.productDAO.list());
	  model.addAttribute("categoryList", this.categoryDAO.list());
	  model.addAttribute("supplierList", this.supplierDAO.list());
	
	redirectAttributes.addFlashAttribute("selectedProduct", productDAO.getProduct(product_id));
	
	
	
	return "manageproducts";

}
  
  
  

}
