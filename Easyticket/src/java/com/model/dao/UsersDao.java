/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.dao;

import com.model.entity.Users;
import java.util.List;

/**
 *
 * @author tavan_000
 */
public interface UsersDao {
    
    public boolean insertUser(Users user);
    public List<Users> getUsers();
    public boolean updateUser(Users user);
    public boolean deleteUser(Integer userId);
    public boolean isExistedUser(String userName);
    public boolean isAuthenticated(String userName, String password);
    public Users getUser(String id);
       
}
