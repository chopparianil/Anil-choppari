package com.mobigo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobigo.model.Category;



@Repository
public class CattDao 
{
   @Autowired
   SessionFactory sessionFactory;
   
   public void storeCategory(Category catt)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(catt);
		session.getTransaction().commit();
		session.close();
	}
   

	public List getcat()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		List l = session.createQuery("FROM Category").list(); 
		
		session.getTransaction().commit();
		session.close();
		
		return l;
		
	}
   
  }