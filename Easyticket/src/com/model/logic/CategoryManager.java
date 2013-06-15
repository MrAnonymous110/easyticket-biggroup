package com.model.logic;

import java.util.List;

import com.model.entity.Category;

public interface CategoryManager {
	public Category getCategory(int id);
	public List<Category> getCategories();
	public boolean insert(Category c);
	public boolean update(Category c);
	public boolean delete(int id);
}

