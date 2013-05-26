package com.model.logic.impl;

import java.util.List;

import com.model.dao.UsersDao;
import com.model.dao.impl.UsersDaoImpl;
import com.model.entity.Roles;
import com.model.entity.Users;
import com.model.logic.UsersManager;

public class UsersManagerImpl implements UsersManager {

	UsersDao dao;
	
	public UsersManagerImpl()
	{
		 dao = new UsersDaoImpl();
		
	}
	
	@Override
	public List<Users> getUsers() {
		return dao.getUsers();
	}

	@Override
	public Users getUser(int id) {
		 return dao.getUser(id);
	}

	@Override
	public Users getUser(String username, String password) {
		return dao.getUser(username, password);
	}

	@Override
	public boolean insert(Users user) {
	    return	dao.insert(user);
	}

	@Override
	public boolean update(Users user) {
	    return dao.update(user);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public String getRolesForUser(String username) {
		Roles r = dao.getRolesForUser(username);
		if(r!=null)
		  return r.getName();
		else 
	      return "";
	}

}
