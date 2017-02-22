package com.mobigo.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mobigo.dao.RegDao;
import com.mobigo.model.User;

@Controller
@RequestMapping(value="/register")
public class RegisterController 
{
	@Autowired
	RegDao regdao;
	@RequestMapping(method=RequestMethod.GET)
	public String viewRegistration(Map<String,Object>model)
	{
		User userForm=new User();
		model.put("userForm",userForm);
		return"register";
	}
	


@RequestMapping(method = RequestMethod.POST)
public String processRegistration(@ModelAttribute("userForm") User user,
        Map<String, Object> model) {
     
    // implement your own registration logic here...
     
    // for testing purpose:
   // System.out.println("username: " + user.getUsername());
    //System.out.println("password: " + user.getPassword());
   
     regdao.storeUser(user);
    return "registersuccess";
}
}