package com.controller;

import java.util.Date;
import java.util.Map;

import com.model.entity.Users;
import com.model.logic.UsersManager;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.process.StringFormat;

public class HomeController extends ActionSupport {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private	UsersManager mng;
	private String error;
	
	
	public HomeController()
	{		
	    mng = new UsersManagerImpl();	
	}
	
	
	public String Login()
	{
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 if(session !=null && session.get("user") !=null){
			 return "success";
		 }
		 if(username!=null && password !=null)
		 {	 
			 Users user = mng.getUser(username,StringFormat.encryptMD5(password));
			 if(user !=null){
				 session.put("user", user);
				 session.put("viewtime", new Date());
				 return "success";
			 }
			 else error = "Username or password is invalid!";
		 }
		 return "input";
		
	}
	
	public String Logout()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(session !=null && session.get("user") !=null){
			 session.remove("user");
			 session.remove("viewtime");
		}
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


	public UsersManager getMng() {
		return mng;
	}


	public void setMng(UsersManager mng) {
		this.mng = mng;
	}


	public String getError() {
		return error;
	}


	public void setError(String error) {
		this.error = error;
	}
	
	
	
}
