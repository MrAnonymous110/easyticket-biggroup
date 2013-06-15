package com.model.logic.impl;

import java.util.List;

import com.model.dao.NewsDao;
import com.model.dao.impl.NewsDaoImpl;
import com.model.entity.News;
import com.model.logic.NewsManager;

public class NewsManagerImpl implements NewsManager {

	NewsDao dao;

	public NewsManagerImpl() {
		dao = new NewsDaoImpl();
	}

	@Override
	public News getNew(int id) {
		return dao.getNew(id);
	}

	@Override
	public List<News> getNews() {
		return dao.getNews();
	}

	@Override
	public boolean update(News n) {
		return dao.update(n);
	}

	@Override
	public boolean insert(News n) {
		return dao.insert(n);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public List<News> find(int cateId, int start, int count) {
		// TODO Auto-generated method stub
		return dao.find(cateId, start, count);
	}

}
