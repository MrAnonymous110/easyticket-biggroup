package com.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.EventTypeDao;
import com.model.entity.EventType;
import com.model.util.HibernateUtil;

public class EventTypeDaoImpl implements EventTypeDao{

	@Override
	public List<EventType> getEventTypes() {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<EventType> list = session.createQuery("from EventType").list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public boolean insert(EventType eventType) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.save(eventType);
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
	public boolean update(EventType eventType) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.update(eventType);
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
			  EventType e = (EventType) session.get(EventType.class, id);
			  session.delete(e);
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
	public EventType getEventType(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  EventType e  =  (EventType) session.get(EventType.class, id);
			  return e;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	 
}
