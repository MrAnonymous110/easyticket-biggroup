package com.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.PaymentDao;
import com.model.entity.Payment;
import com.model.util.HibernateUtil;

public class PaymentDaoImpl implements PaymentDao {

	@Override
	public List<Payment> getPayments() {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<Payment> list = session.createQuery("from Payment").list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public boolean insert(Payment pay) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.save(pay);
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
	public boolean update(Payment pay) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.update(pay);
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
			  Payment pay = (Payment) session.get(Payment.class, id);
			  session.delete(pay);
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
	public Payment getPayment(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Payment pay = (Payment) session.get(Payment.class, id);
			  return pay;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}
   
}
