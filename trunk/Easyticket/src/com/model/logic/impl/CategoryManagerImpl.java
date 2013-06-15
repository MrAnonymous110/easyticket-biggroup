package com.model.logic.impl;

import java.util.List;

import com.model.dao.CategoryDao;
import com.model.dao.impl.CategoryDaoImpl;
import com.model.entity.Category;
import com.model.logic.CategoryManager;

public class CategoryManagerImpl implements CategoryManager {

	CategoryDao dao;

	public CategoryManagerImpl() {
		dao = new CategoryDaoImpl();
	}

	@Override
	public Category getCategory(int id) {
		return dao.getCategory(id);
	}

	@Override
	public List<Category> getCategories() {
		return dao.getCategories();
	}

	@Override
	public boolean insert(Category c) {
		return dao.insert(c);
	}

	@Override
	public boolean update(Category c) {
		return dao.update(c);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

}
