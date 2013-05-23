/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao.impl;

import com.model.dao.RolesDao;
import com.model.entity.Roles;
import com.model.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.classic.Session;

/**
 *
 * @author tavan_000
 */
public class RolesDaoImpl implements RolesDao{
    private Session session;
    public RolesDaoImpl() {
         session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    @Override
    public List<Roles> getRoles() {
        
        try
        {
            session.beginTransaction();
            List<Roles> list = session.createQuery("from Roles").list();
            return list;
            
        }
        catch(Exception e)
        {
            return new ArrayList<Roles>();
        }
    }

    @Override
    public boolean insertRole(Roles role) {
       
        try
        {
           session.beginTransaction();
           session.save(role);
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
    public boolean updateRole(Roles role) {
        try
        {
           session.beginTransaction();
           session.update(role);
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
    public boolean deleteRole(int roleId) {
        try{
            session.beginTransaction();
            Roles ob = (Roles)session.get(Roles.class, roleId);
            session.delete(ob);
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
    public Roles getRole(Integer id) {
        try
        {
            session.beginTransaction();
            Roles role = (Roles)session.get(Roles.class, id);
            return role;
        }
        catch(Exception e)
        {
            return null;
        }
    }
    
}
