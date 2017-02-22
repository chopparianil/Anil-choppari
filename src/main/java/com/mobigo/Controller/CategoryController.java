package com.mobigo.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobigo.dao.CattDao;
import com.mobigo.model.Category;

@Controller
@RequestMapping(value ="/addcategory")
public class CategoryController 
{
	@Autowired
	CattDao catDAO;
	
	
	@RequestMapping(method=RequestMethod.GET)
	public String viewRegistration(Map<String,Object>model)
	{
		Category categoryForm=new Category();
		model.put("categoryForm",categoryForm);
		return"addcategory";
	}
	


@RequestMapping(method = RequestMethod.POST)
public String processRegistration(@ModelAttribute("categoryForm") Category category,
        Map<String, Object> model) {
     
    // implement your own registration logic here...
     
    // for testing purpose:
    //System.out.println("username: " + user.getUsername());
    //System.out.println("password: " + user.getPassword());
   
     catDAO.storeCategory(category);
    return "addcategorysuccess";
}
}
