package com.model.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.EventDao;
import com.model.entity.Event;
import com.model.util.HibernateUtil;

public class EventDaoImpl implements EventDao {

	public EventDaoImpl(){}
	
	@Override
	public List<Event> getEvents() {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<Event> list = session.createQuery("from Event").list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public boolean insert(Event event) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.save(event);
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
	public boolean update(Event event) {
		Transaction transaction = null;
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  transaction = session.beginTransaction();
			  session.update(event);
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
			  Event e = (Event) session.get(Event.class, id);
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
	public Event getEvent(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Event e  =  (Event) session.get(Event.class, id);
			  return e;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public List<Event> findAll(String query) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<Event> list = session.createQuery(query).list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

	@Override
	public List<Event> findRange(String query, int start, int count) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Query q  = session.createQuery(query);
			  q.setFirstResult(start);
			  q.setMaxResults(count);
			  List<Event> list =   q.list();
			  return list;
		  }
		  catch(Exception e){
	           e.printStackTrace();
	           return null;
		  }
	}

}
