package com.model.entity;

import javax.persistence.*;

@Entity
@Table(name="Payment")
public class Payment {

	 public Payment(){}
	
	 @Id
	 @GeneratedValue
	 @Column(name="Id")
     private Integer id;
	 
	 @Column(name="Name",length =50)
     private String name;
	 
	 @Column(name="Description", length =100, nullable = true)
     private String description;

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
	 
	 
	 
}

