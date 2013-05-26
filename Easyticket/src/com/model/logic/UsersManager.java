package com.model.logic;

import java.util.List;

import com.model.entity.Roles;
import com.model.entity.Users;

public interface UsersManager {
	
     public List<Users> getUsers();
	 
	 public Users getUser(int id);
	 
	 public Users getUser(String username, String password);
	 
	 public boolean insert(Users user);
	 
	 public boolean update(Users user);
	 
	 public boolean delete(int id);
	 
	 public String getRolesForUser(String username);
}
