package com.controller;

import java.util.List;

import com.model.dao.RolesDao;
import com.model.dao.impl.RolesDaoImpl;
import com.model.entity.Roles;

public class AccountController {
     
	private String username;
	private String password;
	private List<Roles> roles;
	private int count;
	private int id;
	
	public String login()
	{
		 if(username !=null && password !=null){
			 if(username.equals(password)){
				 
				RolesDaoImpl dao = new RolesDaoImpl();
				roles = dao.getRoles();
				if(roles !=null)
				   count = roles.size();
				else
				   count= 100;
			    return "success";
			 }
		 }
		 return "input";
	}
	
	public String deleteRole()
	{
	    RolesDao dao = new RolesDaoImpl();
		dao.delete(id);
		return "success";
	}
	

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<Roles> getRoles() {
		return roles;
	}

	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	
	
}
