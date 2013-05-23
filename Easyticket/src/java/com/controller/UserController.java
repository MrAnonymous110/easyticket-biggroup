/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.model.dao.UsersDao;
import com.model.dao.impl.UsersDaoImpl;
import com.model.entity.Users;

/**
 *
 * @author tavan_000
 */
public class UserController{
    
    private Users user;
    private String userName;
    private String password;
    private UsersDao mng;

    public UserController() {
        
    }
    
    public String Login()
    {
        mng= new UsersDaoImpl();
        if(mng.isAuthenticated(userName, password)){
           return "success";
        }
        else
        {
           return "input";
        }   
    }

    public Users getUser() {
        return user;
    }

    public void setUser(Users user) {
        this.user = user;
    }

    public UsersDao getMng() {
        return mng;
    }

    public void setMng(UsersDao mng) {
        this.mng = mng;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
    
}
