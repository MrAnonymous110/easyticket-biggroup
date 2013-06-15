package com.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.model.entity.Roles;
import com.model.entity.Users;
import com.model.logic.RolesManager;
import com.model.logic.UsersManager;
import com.model.logic.impl.RolesManagerImpl;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.process.StringFormat;

public class AccountController extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// property user
	private int id;
	private String userName;
	private String password;
	private String fullName;
	private String confirmPassword;
	private String address;
	private String email;
	private String phone;
	private String birthDay;

	private int roleId;
	// property role
	private String roleName;
	private String roleDescription;

	// error message
	private String error;

	private int count;

	// entity
	private Users user;

	// List model
	private List<Roles> roles;
	private List<Users> users;

	// manager object
	private UsersManager userMng;
	private RolesManager roleMng;

	// session
	private Map<String, Object> session;

	public AccountController() {
		userMng = new UsersManagerImpl();
		roleMng = new RolesManagerImpl();
	}

	public String listUsers() {
		if (isAuthorize()) {
			users = userMng.getUsers();
			return "success";
		}
		return "login";
	}

	public String newUser() {
		if (isAuthorize()) {
			roles = roleMng.getRoles();
			return "success";
		}
		return "login";
	}

	public String editUser() {
		if (isAuthorize()) {
			user = userMng.getUser(id);
			roles = roleMng.getRoles();
			return "success";
		}
		return "login";
	}

	public String register() {
		if (isValid()) {
			if ("".equals(password)) {
				error = "password is invalid!";
				return "input";
			}
			if (!password.equals(confirmPassword)) {
				error = "confirm password is not match!";
				return "input";
			}
			try {
				user = new Users();
				user.setUserName(userName);
				user.setPassword(StringFormat.encryptMD5(password));
				user.setFullName(fullName);
				user.setAddress(address);
				user.setEmail(email);
				Roles role = roleMng.getRole(roleId);
				user.setRole(role);
				user.setPhone(phone);
				user.setBirthDay(new SimpleDateFormat("dd/MM/yyyy")
						.parse(birthDay));
				user.setCreateDate(new Date());
				userMng.insert(user);

				session = ActionContext.getContext().getSession();
				session.put("user", user);
				session.put("viewtime", new Date());
				return "success";
			} catch (Exception e) {
				return "input";
			}

		}
		return "input";
	}

	public String createUser() {
		if (isAuthorize()) {
			if (isValid()) {
				if ("".equals(password)) {
					error = "password is invalid!";
					return "input";
				}
				if (!password.equals(confirmPassword)) {
					error = "confirm password is not match!";
					return "input";
				}
				try {
					user = new Users();
					user.setUserName(userName);
					user.setPassword(StringFormat.encryptMD5(password));
					user.setFullName(fullName);
					user.setAddress(address);
					user.setEmail(email);
					Roles role = roleMng.getRole(roleId);
					user.setRole(role);
					user.setPhone(phone);
					user.setBirthDay(new SimpleDateFormat("dd/MM/yyyy")
							.parse(birthDay));
					user.setCreateDate(new Date());
					userMng.insert(user);
					return "success";
				} catch (Exception e) {
					return "input";
				}

			}
			return "input";
		}
		return "login";
	}

	public String updateUser() {
		if (isAuthorize()) {
			if (isValid()) {

				try {
					user = userMng.getUser(id);

					if (!"".equals(password)) {
						if (!password.equals(confirmPassword)) {
							error = "confirm password is not match!";
							return "input";
						}

						user.setPassword(StringFormat.encryptMD5(password));
					}

					user.setUserName(userName);
					user.setFullName(fullName);
					user.setAddress(address);
					user.setEmail(email);
					Roles role = roleMng.getRole(roleId);
					user.setRole(role);
					user.setPhone(phone);
					user.setBirthDay(new SimpleDateFormat("dd/MM/yyyy")
							.parse(birthDay));

					userMng.update(user);
					return "success";
				} catch (Exception e) {
					return "input";
				}

			}
			return "input";
		}
		return "login";
	}

	public String deleteUser() {
		if (isAuthorize()) {
			userMng.delete(id);
			return "success";
		}
		return "login";
	}

	public String roles() {
		if (isAuthorize()) {
			roles = roleMng.getRoles();
			return "success";
		}
		return "login";
	}

	public String createRole() {
		if (isAuthorize()) {
			Roles r = new Roles();
			r.setName(roleName);
			r.setDescription(roleDescription);
			roleMng.insert(r);
			return "success";
		}
		return "login";

	}

	public String deleteRole() {
		if (isAuthorize()) {
			roleMng.delete(roleId);
			return "success";
		}
		return "login";
	}

	public String updateRole() {
		if (isAuthorize()) {
			Roles r = new Roles();
			r.setId(roleId);
			r.setName(roleName);
			r.setDescription(roleDescription);
			roleMng.update(r);
			return "success";
		}
		return "login";
	}

	private boolean isValid() {
		if ("".equals(userName)) {
			error = "User Name is invalid!";
			return false;
		}
		if ("".equals(fullName)) {
			error = "Full Name is invalid!";
			return false;
		}
		if ("".equals(address)) {
			error = "address is invalid!";
			return false;
		}
		if ("".equals(email)) {
			error = "email is invalid!";
			return false;
		}
		if ("".equals(birthDay)) {
			error = "bidthDay is invalid!";
			return false;
		}
		try {
			new SimpleDateFormat("dd/MM/yyyy").parse(birthDay);
			return true;
		} catch (ParseException e) {
			error = "bidthDay is not true format!";
			return false;
		}

	}

	public String profile() {
		if (isAuthorize()) {
			session = ActionContext.getContext().getSession();
			user = (Users) session.get("user");
			user = userMng.getUser(user.getId());
			return "success";
		}
		return "login";

	}

	public String saveProfile() {
		if (isAuthorize()) {
			if (isValid()) {
				try {
					user = userMng.getUser(id);

					if (!"".equals(password)) {
						if (!password.equals(confirmPassword)) {
							error = "confirm password is not match!";
							return "input";
						}

						user.setPassword(StringFormat.encryptMD5(password));
					}

					user.setUserName(userName);
					user.setFullName(fullName);
					user.setAddress(address);
					user.setEmail(email);
					Roles role = roleMng.getRole(roleId);
					user.setRole(role);
					user.setPhone(phone);
					user.setBirthDay(new SimpleDateFormat("dd/MM/yyyy")
							.parse(birthDay));

					userMng.update(user);
					return "success";
				} catch (Exception e) {
					return "input";
				}

			}
			return "input";

		}
		return "login";
	}

	private boolean isAuthorize() {
		session = ActionContext.getContext().getSession();
		if (session != null && session.get("user") != null) {
			Users user = (Users) session.get("user");
			if (userMng.getRolesForUser(user.getUserName()).equals("admin")) {

				return true;
			}
		}
		return false;

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

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}

	public UsersManager getUserMng() {
		return userMng;
	}

	public void setUserMng(UsersManager userMng) {
		this.userMng = userMng;
	}

	public RolesManager getRoleMng() {
		return roleMng;
	}

	public void setRoleMng(RolesManager roleMng) {
		this.roleMng = roleMng;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleDescription() {
		return roleDescription;
	}

	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}

}
