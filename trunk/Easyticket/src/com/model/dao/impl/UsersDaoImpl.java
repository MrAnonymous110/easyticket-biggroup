package com.model.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.UsersDao;
import com.model.entity.Roles;
import com.model.entity.Users;
import com.model.util.HibernateUtil;

public class UsersDaoImpl implements UsersDao {

	public UsersDaoImpl()
	{}
	
	@Override
	public List<Users> getUsers() {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  List<Users> users = session.createQuery("from Users").list();
			  return users;
		  }
		  catch(Exception e){
             e.printStackTrace();
             return null;
		  }
	}

	@Override
	public Users getUser(int id) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Users user = (Users)session.get(Users.class, id);
			  return user;
		  }
		  catch(Exception e){
           e.printStackTrace();
           return null;
		  }
	}

	@Override
	public Users getUser(String username, String password) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Query query =  session.createQuery("from Users where UserName=:name and Password=:pass ");
			  query.setParameter("name", username);
			  query.setParameter("pass", password);
			  Users user = (Users) query.uniqueResult();
			  return user;
		  }
		  catch(Exception e){
         e.printStackTrace();
         return null;
		  }
	}

	@Override
	public boolean insert(Users user) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  Transaction transaction = session.beginTransaction();
			  session.save(user);
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
	public boolean update(Users user) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  Transaction transaction = session.beginTransaction();
			  session.update(user);
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
			  Users u =  (Users) session.get(Users.class, id);
			  session.delete(u);
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
	public Roles getRolesForUser(String username) {
		try
		  {
			  Session session = HibernateUtil.getSessionFactory().openSession();
			  session.beginTransaction();
			  Query query =  session.createQuery("from Users where UserName=:name");
			  query.setParameter("name", username);
			  Users user = (Users) query.uniqueResult();	
			  return user.getRole();
		  }
		  catch(Exception e){
           e.printStackTrace();
           return null;
		  }
	}

}
