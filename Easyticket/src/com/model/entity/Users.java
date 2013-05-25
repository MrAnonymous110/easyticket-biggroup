package com.model.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="Users")
public class Users {

	@Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;

    @Column(name="UserName",length = 50)
    private String userName;
    
    @Column(name="Password", length = 50)
    private String password;
    
    @Column(name="FullName", length = 50)
    private String fullName;
    
    @Column(name="Email", length = 100)
    private String email;
    
    @Column(name="Address", length = 100)
    private String address;
    
    @Column(name="Phone", length = 15)
    private String phone;
    
    @Column(name="BirthDay")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date birthDay;
    
    @Column(name="CreateDate")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date createDate; 
    
    @ManyToOne
    @JoinColumn(name="RoleId")
    private Roles role;

    public Users() {
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Roles getRole() {
        return role;
    }

    public void setRole(Roles role) {
        this.role = role;
    }   

}
