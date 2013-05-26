package com.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.FAQDao;
import com.model.entity.City;
import com.model.entity.FAQ;
import com.model.util.HibernateUtil;

public class FAQDaoImpl implements FAQDao {

	@Override
	public List<FAQ> getFAQs() {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<FAQ> list = session.createQuery("from FAQ").list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public boolean insert(FAQ faq) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.save(faq);
			  transaction.commit();
			  session.close();
			  return true;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           if(transaction.isActive())
	           {
	        	   transaction.rollback();
	           }
	           return false;
		  }
	}

	@Override
	public boolean update(FAQ faq) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.update(faq);
			  transaction.commit();
			  session.close();
			  return true;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           if(transaction.isActive())
	           {
	        	   transaction.rollback();
	           }
	           return false;
		  }
	}

	@Override
	public boolean delete(int id) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  FAQ f = (FAQ) session.get(FAQ.class, id);
			  session.delete(f);
			  transaction.commit();
			  session.close();
			  return true;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           if(transaction.isActive())
	           {
	        	   transaction.rollback();
	           }
	           return false;
		  }
	}

	@Override
	public FAQ getFAQ(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  FAQ f  =  (FAQ) session.get(FAQ.class, id);
			  return f;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

}
