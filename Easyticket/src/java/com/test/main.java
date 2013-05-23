/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.test;

import com.model.dao.RolesDao;
import com.model.dao.UsersDao;
import com.model.dao.impl.RolesDaoImpl;
import com.model.dao.impl.UsersDaoImpl;
import com.model.entity.Roles;
import com.model.entity.Users;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tavan_000
 */
public class main {
    public static void main(String[] args) {
           UsersDao dao = new UsersDaoImpl();
           if(dao.isAuthenticated("tatuyen","12345")){
               System.out.println("ok");
           }
           else
           {
               System.out.println("fail");
           }
    }
}
