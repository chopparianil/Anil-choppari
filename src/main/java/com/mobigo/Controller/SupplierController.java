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



@Controller
@RequestMapping("/addsupplier")
public class SupplierController 
{
	
	
	@Autowired
	SuppDao supDAO;
	
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String viewRegistration(Map<String,Object>model)
	{
		Supplier supplierForm=new Supplier();
		model.put("supplierForm",supplierForm);
		List l2=supDAO.getsup();
		model.put("sup",l2);

		return "addsupplier";
		
		
		
		
	
			}
	


@RequestMapping(method = RequestMethod.POST)
public String processRegistration(@ModelAttribute("supplierForm") Supplier supplier,
        Map<String, Object> model) {
     
    // implement your own registration logic here...
     
    // for testing purpose:
    //System.out.println("username: " + user.getUsername());
    //System.out.println("password: " + user.getPassword());
   
     
    supDAO.storeSupplier(supplier);
    
    List l2=supDAO.getsup();
	model.put("sup",l2);

	
	
	return "addsupplier";
}

}
