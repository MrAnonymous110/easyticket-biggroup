package com.test;

import com.model.entity.Users;
import com.model.logic.UsersManager;
import com.model.logic.impl.UsersManagerImpl;
import com.process.StringFormat;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
       
	    UsersManager mng = new UsersManagerImpl();
		Users u = mng.getUser("admin", StringFormat.encryptMD5("customer"));
		if(u!=null)
		  System.out.println("ok");
		else
			System.out.println("fail");

        
	}

}
