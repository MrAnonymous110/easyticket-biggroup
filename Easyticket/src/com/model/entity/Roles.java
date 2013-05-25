package com.model.entity;

import java.util.List;

import javax.persistence.*;

@Entity
@Table(name="Roles")
public class Roles {
    
	public Roles()
	{}
	
	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="description", nullable=true)
	private String description;
	
    @OneToMany(mappedBy = "role")
    private List<Users> users;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<Users> getUsers() {
		return users;
	}

	public void setUsers(List<Users> users) {
		this.users = users;
	}
	
	
	
	
}
