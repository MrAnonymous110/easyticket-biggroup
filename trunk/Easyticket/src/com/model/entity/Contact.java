package com.model.entity;

import java.util.Date;

import javax.persistence.*;

@Entity
@Table(name="Contact")
public class Contact {
    
	public Contact() {
		
	}

	@Id
	@GeneratedValue
	@Column(name="Id")
	private Integer id;
	
	@Column(name="Title",length=50)
	private String title;
	
	@Column(name="Content",length = 200)
	private String content;
	
	@Column(name="Answer",length = 500, nullable = true)
	private String answer;
	
	@ManyToOne
	@JoinColumn(name="UserId")
	private Users user;
	
	@Column(name="SendTime")
	@Temporal(TemporalType.TIMESTAMP)
	private Date sendTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}
	
	
	
}
