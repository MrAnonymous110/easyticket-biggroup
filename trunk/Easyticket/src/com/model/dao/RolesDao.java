package com.model.dao;

import java.util.List;

import com.model.entity.Roles;

public interface RolesDao {
    
	public boolean insert(Roles role);
	
	public List<Roles> getRoles();
	
	public Roles getRole(int id);
	
	public boolean update(Roles role);
	
	public boolean delete(int id);
	
}
