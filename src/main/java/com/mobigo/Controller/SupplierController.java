package com.mobigo.Controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobigo.dao.SuppDao;
import com.mobigo.model.Supplier;



@Controller//when user clicks on addsupplier in navbar then controller comes to supplier controller
@RequestMapping("/addsupplier")//it will check for mapping found or not
public class SupplierController 
{
	
	
	@Autowired
	SuppDao supDAO;//create supDAO object using SuppDao class(dao class) 
	
	
	
	@RequestMapping(method=RequestMethod.GET)//controller comes to get method
	public String viewSupplier(Map<String,Object>model)
	{
		Supplier supplierForm=new Supplier();//create supplierForm object using Supplier class(model class) , and it should match with commandname in addsupplier.jsp page
		model.put("supplierForm",supplierForm);
		
		List l2=supDAO.getsup();
		model.put("sup",l2);

		return "addsupplier";//it will return you addsupplier.jsp page and then controller will goes to addsupplier.jsp page
		
		
		
		
	
			}
	
@RequestMapping(method = RequestMethod.POST)
//controller came to post method from addsupplier page 

public String processSupplier(@ModelAttribute("supplierForm") Supplier supplier,
		//create supplier object using Supplier class(model class),and this supplier object now stored with data of user enter in addproduct.jsp page

        Map<String, Object> model) {
     
    // implement your own registration logic here...
     
    // for testing purpose:
    //System.out.println("username: " + user.getUsername());
    //System.out.println("password: " + user.getPassword());
   
     
    supDAO.storeSupplier(supplier);//using supDAO object send supplier object to storeSupplier method(it is SuppDao)
    
    List l2=supDAO.getsup();
	model.put("sup",l2);

	
	
	return "addsupplier";
}

}
