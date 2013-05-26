package com.model.logic.impl;

import java.util.List;

import com.model.dao.RolesDao;
import com.model.dao.impl.RolesDaoImpl;
import com.model.entity.Roles;
import com.model.logic.RolesManager;

public class RolesManagerImpl implements RolesManager {

    RolesDao dao;
	
	public RolesManagerImpl()
	{
		dao = new RolesDaoImpl();
	}
	
	@Override
	public boolean insert(Roles role) {
	    return dao.insert(role);
	}

	@Override
	public List<Roles> getRoles() {
		return dao.getRoles();
	}

	@Override
	public Roles getRole(int id) {
		return dao.getRole(id);
	}

	@Override
	public boolean update(Roles role) {
		return dao.update(role);
	}

	@Override
	public boolean delete(int id) {
        return dao.delete(id);
	}

	public RolesDao getDao() {
		return dao;
	}

	public void setDao(RolesDao dao) {
		this.dao = dao;
	}

}
