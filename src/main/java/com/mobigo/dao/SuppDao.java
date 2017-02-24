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
	
	public void storeSupplier(Supplier supp)//STORING DATA IN DATABASE( flow is like JSP TO CONTRLEER TO DAO)
	//supplier object came here.
	// create supp object using Supplier class(model class) and save supplier object in supp object.
	{
		Session session=sessionFactory.openSession(); //open session to do transaction with database.(as of now we are storing data)
		System.out.println("insert called method");
		session.beginTransaction();                   //begin transactions
		session.save(supp);
		session.getTransaction().commit();
		session.close();                              //close session
	}
	
	
	
	public List getsup()   //RETRIEVING DATA FROM DATABASE TO SHOW IN JSP PAGE FOR THIS WE USE JSTL ( flow is like DAO TO CONTROLLER TO JSP PAGE) 
	{
		Session session=sessionFactory.openSession();//open session to do transactions with database(as of now we are retrieving data) 
		System.out.println("insert called method");
		session.beginTransaction();                   //begin transaction
	List l2=session.createQuery("FROM Supplier").list();  //create object l2 using List class(List class available in util package)
	session.getTransaction().commit();
	session.close();

	return l2;
	}
}
