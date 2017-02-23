package com.mobigo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobigo.model.Supplier;

@Repository

public class SuppDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void storeSupplier(Supplier supp)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(supp);
		session.getTransaction().commit();
		session.close();
	}
	
	public List getsup()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
	List l2=session.createQuery("FROM Supplier").list();
	session.getTransaction().commit();
	session.close();

	return l2;
	}
}
