package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.Category;
import com.model.entity.News;
import com.model.logic.CategoryManager;
import com.model.logic.NewsManager;
import com.model.logic.impl.CategoryManagerImpl;
import com.model.logic.impl.NewsManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

public class NewsController extends ActionSupport implements
		ServletRequestAware {

	private static final long serialVersionUID = 1L;
	private int categoryId;
	private String categoryName;
	private int id;
	private String title;
	private String content;
	private Category category;
	private String subContent;

	private NewsManager NewsMng;
	private CategoryManager CategoryMng;

	private String error;

	private List<Category> CatList;
	private List<News> NewsList;

	public List<Category> getCatList() {
		return CatList;
	}

	public void setCatList(List<Category> catList) {
		CatList = catList;
	}

	public List<News> getNewsList() {
		return NewsList;
	}

	public void setNewsList(List<News> newsList) {
		NewsList = newsList;
	}

	public NewsController() {
		NewsMng = new NewsManagerImpl();
		CategoryMng = new CategoryManagerImpl();
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
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

	public String getSubContent() {
		return subContent;
	}

	public void setSubContent(String subContent) {
		this.subContent = subContent;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String createCategory() {
		Category c = new Category();
		if (categoryName != null) {
			c.setName(categoryName);
			if (!CategoryMng.insert(c)) {
				error = "category name can not empty";
				return "input";
			}
		}
		return "success";
	}

	public String updateCategory() {
		Category c = new Category();
		if (categoryName != null && categoryId > 0) {
			c.setId(categoryId);
			c.setName(categoryName);
			if (!CategoryMng.update(c)) {
				error = "category name can not empty";
				return "input";
			}
		}
		return "success";
	}

	public String getCategoryList() {
		CatList = new ArrayList<>();
		CatList = CategoryMng.getCategories();
		return "success";
	}

	public String deleteCategory() {
		if (categoryId > 0) {
			CategoryMng.delete(categoryId);
		}
		return "success";
	}

	public String createNew() {
		News n = new News();
		if (content != null && subContent != null && title != null
				&& categoryId > 0) {
			n.setContent(content);
			n.setSubContent(subContent);
			n.setTitle(title);
			category = CategoryMng.getCategory(categoryId);
			n.setCategory(category);
			NewsMng.insert(n);
		} else {
			error = "You must fill in all of the fields.";
			return "input";
		}
		return "success";
	}

	public String updateNew() {
		News n = new News();
		if (content != null && subContent != null && title != null
				&& categoryId > 0) {
			n.setContent(content);
			n.setSubContent(subContent);
			n.setTitle(title);
			category = CategoryMng.getCategory(categoryId);
			n.setCategory(category);
			NewsMng.update(n);
		} else {
			error = "You must fill in all of the fields.";
			return "input";
		}
		return "success";
	}

	public String getNewList() {
		NewsList = new ArrayList<>();
		NewsList = NewsMng.getNews();
		CatList = new ArrayList<>();
		CatList = CategoryMng.getCategories();
		return "success";
	}

	public String deleteNew() {
		if (id > 0) {
			if (!NewsMng.delete(id)) {
				error = "delete fail";
				return "input";
			}
		}
		return "success";
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
	}

}
