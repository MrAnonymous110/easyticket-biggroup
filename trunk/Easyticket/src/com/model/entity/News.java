package com.model.entity;

import javax.persistence.*;

@Entity
@Table(name="News")
public class News {
   
	public News()
	{
		
	}
	
	@Id
	@GeneratedValue
	@Column(name="Id")
	private int id;
	
	@Column(name="Title")
	private String title;
	
	@Column(name="Content")
	private String content;
	
	@ManyToOne
	@JoinColumn(name="cateId")
	private Category category;
	
	private String subContent;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the subContent
	 */
	public String getSubContent() {
		return subContent;
	}

	/**
	 * @param subContent the subContent to set
	 */
	public void setSubContent(String subContent) {
		this.subContent = subContent;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	
	
	
}
