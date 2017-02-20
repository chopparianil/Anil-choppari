package com.mobigo.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobigo.model.Product;
import com.mobigo.model.User;

@Controller
@RequestMapping(value="/addproduct")
public class ProductController 
{
	@RequestMapping(method=RequestMethod.GET)
	public String viewproduct(Map<String,Object>model)
	{
		Product productForm=new Product();
		model.put("productForm",productForm);
	return "addproduct";
	}
	@RequestMapping(method = RequestMethod.POST)
	public String processRegistration(@ModelAttribute("productForm") Product product,
	        Map<String, Object> model) {
	     
	    // implement your own registration logic here...
	     
	    // for testing purpose:
	    System.out.println("id: " + product.getId());
	    System.out.println("name " + product.getName());
	    System.out.println("decsription " + product.getDescription());
	    System.out.println("price" + product.getPrice());
	    System.out.println("quantity" + product.getQuantity());


	    
	     
	    return "addproductsuccess";
	}
	}
	