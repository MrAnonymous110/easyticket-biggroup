package com.test;

import com.model.dao.impl.RolesDaoImpl;
import com.model.entity.Roles;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
       
		RolesDaoImpl dao = new RolesDaoImpl();
	    Roles r = dao.getRole(1);
	    System.out.println("Role name: "+r.getName());
	    System.out.println("Users count: "+r.getUsers().size());
        
	}

}
