package com.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.model.dao.CategoryDao;
import com.model.entity.Category;
import com.model.entity.EventType;
import com.model.util.HibernateUtil;

public class CategoryDaoImpl implements CategoryDao {

	public CategoryDaoImpl() {
	}

	@Override
	public Category getCategory(int id) {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			Category c = (Category) session.get(Category.class, id);
			return c;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Category> getCategories() {
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			session.beginTransaction();
			List<Category> list = session.createQuery("from Category").list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean insert(Category c) {
		Transaction transaction = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.save(c);
			transaction.commit();
			session.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction.isActive()) {
				transaction.rollback();
			}
			return false;
		}
	}

	@Override
	public boolean update(Category c) {
		Transaction transaction = null;
		try {
			Session session = HibernateUtil.getSessionFactory().openSession();
			transaction = session.beginTransaction();
			session.update(c);
			transaction.commit();
			session.close();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction.isActive()) {
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
			  Category c = (Category) session.get(Category.class, id);
			  session.delete(c);
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

}
