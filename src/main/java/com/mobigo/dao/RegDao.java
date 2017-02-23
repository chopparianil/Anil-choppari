package com.mobigo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.mobigo.model.User;

@Repository
public class RegDao 
{
  @Autowired
  SessionFactory sessionFactory;
  
  public void storeUser(User userr)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(userr);
		session.getTransaction().commit();
		session.close();
	}
}
  
  
  

