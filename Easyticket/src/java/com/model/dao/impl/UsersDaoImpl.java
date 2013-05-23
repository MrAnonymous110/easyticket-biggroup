/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao.impl;

import com.model.dao.UsersDao;
import com.model.entity.Users;
import com.model.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.classic.Session;

/**
 *
 * @author tavan_000
 */
public class UsersDaoImpl implements UsersDao{
    private Session session;
    public UsersDaoImpl() {
         session = HibernateUtil.getSessionFactory().getCurrentSession();
//        SessionFactory sessionFac = new Configuration().configure().buildSessionFactory();
//        session = sessionFac.openSession();
    }

    @Override
    public boolean insertUser(Users user) {
        
        try
        {
            session.beginTransaction();
            session.save(user);
            session.flush();
            session.getTransaction().commit();
            return true;
        }
        catch(Exception e)
        {
            if(session.getTransaction().isActive())
                session.getTransaction().rollback();
            return false;
        }
        
    }

    @Override
    public List<Users> getUsers() {
        try
        {
             session.beginTransaction();
             List<Users> list = session.createQuery("from Users").list();
             return list;
        }
        catch(Exception e)
        { 
            return null;
        }
    }

    @Override
    public boolean updateUser(Users user) {
         try
        {
            session.beginTransaction();
            session.update(user);
            session.flush();
            session.getTransaction().commit();
            return true;
        }
        catch(Exception e)
        {
            if(session.getTransaction().isActive())
                session.getTransaction().rollback();
            return false;
        }
    }

    @Override
    public boolean deleteUser(Integer userId) {
        try
        {
            session.beginTransaction();
            Users get = (Users)session.get(Users.class, userId);
            session.delete(get);
            session.flush();
            session.getTransaction().commit();
            return true;
        }
        catch(Exception e)
        {
            if(session.getTransaction().isActive())
                session.getTransaction().rollback();
            return false;
        }
    }

    @Override
    public boolean isExistedUser(String userName) {
        try{
            session.beginTransaction();
            Query query = session.createQuery("from Users user where user.userName=:username");
            query.setParameter("username", userName);
            List list = query.list();
            if(list.size()>0)
                return true;
            return false;
        }
        catch(Exception e)
        {
            System.out.println("Error: "+e.getMessage());
            return false;
        }
    }

    @Override
    public boolean isAuthenticated(String userName, String password) {
       try{
            session.beginTransaction();
            Query query = session.createQuery("from Users where userName=:username and password=:pass");
            query.setParameter("username", userName);
            query.setParameter("pass", password);
            List list = query.list();
            if(list.size()>0)
                return true;
            return false;
        }
        catch(Exception e)
        {
            return false;
        }
    }

    @Override
    public Users getUser(String id) {
        try
        {
            session.beginTransaction();
            Users get = (Users)session.get(Users.class, id);
            return get;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
}
