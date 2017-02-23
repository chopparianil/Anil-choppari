package com.mobigo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobigo.model.Product;



@Repository
public class ProductDao 
{
	@Autowired
	SessionFactory sessionFactory;
	public void storeProduct(Product prod)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(prod);
		session.getTransaction().commit();
		session.close();
	}
	public List getproduct()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
	List l=session.createQuery("FROM Product").list();
	session.getTransaction().commit();
	session.close();

	return l;
	}
}


