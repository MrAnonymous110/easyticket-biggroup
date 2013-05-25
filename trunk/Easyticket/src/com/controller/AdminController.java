package com.controller;

public class AdminController {
    
	private String username;
	private String password;
	
	public AdminController()
	{
		
		
	}
	
	public String Login()
	{
		 
		 if(username!=null && password !=null)
		 {	 
			 return "success";
		 }
		 return "input";
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
	
	
	
}
