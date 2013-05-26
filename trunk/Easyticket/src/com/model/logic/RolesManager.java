package com.model.logic;

import java.util.List;

import com.model.entity.Roles;

public interface RolesManager {

	public boolean insert(Roles role);
	
	public List<Roles> getRoles();
	
	public Roles getRole(int id);
	
	public boolean update(Roles role);
	
	public boolean delete(int id);
}
