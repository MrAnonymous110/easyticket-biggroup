package com.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.RolesDao;
import com.model.entity.Roles;
import com.model.util.HibernateUtil;

public class RolesDaoImpl implements RolesDao {
  
	  public RolesDaoImpl(){
	  }
	  
	  @Override
	  public boolean insert(Roles role)
	  {
		  try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  Transaction transaction = session.beginTransaction();
			  session.save(role);
			  transaction.commit();
			  session.close();	
			  return true;
		  }
		  catch(Exception e){
               e.printStackTrace();
               return false;
		  }
	  }
   
	  @Override
	  public Roles getRole(int id)
	  {
		  try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Roles r =  (Roles) session.get(Roles.class, id);
			  return r;
		  }
		  catch(Exception e){
               e.printStackTrace();
               return null;
		  }
		   
	  }
	  
	  @Override
	  public List<Roles> getRoles()
	  {
		  try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<Roles> roles = session.createQuery("from Roles").list();
			  return roles;
		  }
		  catch(Exception e){
               e.printStackTrace();
               return null;
		  }
	  }

	@Override
	public boolean update(Roles role) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  Transaction transaction = session.beginTransaction();
			  session.update(role);
			  transaction.commit();
			  session.close();	
			  return true;
		  }
		  catch(Exception e){
             e.printStackTrace();
             return false;
		  }
	}

	@Override
	public boolean delete(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  Transaction transaction = session.beginTransaction();
			  Roles r = (Roles) session.get(Roles.class, id);
			  session.delete(r);
			  transaction.commit();
			  session.close();	
			  return true;
		  }
		  catch(Exception e){
             e.printStackTrace();
             return false;
		  }
	}
	  
}
