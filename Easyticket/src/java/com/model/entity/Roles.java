/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author tavan_000
 */
@Entity
@Table(name="Roles")
public class Roles implements Serializable  {
    
    @Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;

    @Column(name="name",length = 50)
    private String name;

    @Column(name="description", length = 200, nullable = false)
    private String description;

    @OneToMany(mappedBy = "role")
    private List<Users> users;
    
    public Roles() {
    }

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
