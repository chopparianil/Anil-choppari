package com.mobigo.Controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobigo.model.Supplier;



@Controller
@RequestMapping("/addsupplier")
public class SupplierController 
{
	@RequestMapping(method=RequestMethod.GET)
	public String viewRegistration(Map<String,Object>model)
	{
		Supplier supplierForm=new Supplier();
		model.put("supplierForm",supplierForm);
		return"addsupplier";
	}
	


@RequestMapping(method = RequestMethod.POST)
public String processRegistration(@ModelAttribute("supplierForm") Supplier supplier,
        Map<String, Object> model) {
     
    // implement your own registration logic here...
     
    // for testing purpose:
    //System.out.println("username: " + user.getUsername());
    //System.out.println("password: " + user.getPassword());
   
     
    return "addsuppliersuccess";
}

}
