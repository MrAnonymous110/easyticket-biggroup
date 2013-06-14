package com.model.logic.impl;

import java.util.List;

import com.model.dao.FAQDao;
import com.model.dao.impl.FAQDaoImpl;
import com.model.entity.FAQ;
import com.model.logic.FAQManager;

public class FAQManagerImpl implements FAQManager {

	FAQDao dao;
	
	public FAQManagerImpl()
	{
		dao = new FAQDaoImpl();
	}
	
	@Override
	public List<FAQ> getFAQs() {
		// TODO Auto-generated method stub
		return dao.getFAQs();
	}

	@Override
	public boolean insert(FAQ faq) {
		// TODO Auto-generated method stub
		return dao.insert(faq);
	}

	@Override
	public boolean update(FAQ faq) {
		// TODO Auto-generated method stub
		return dao.update(faq);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public FAQ getFAQ(int id) {
		// TODO Auto-generated method stub
		return dao.getFAQ(id);
	}
   
}
