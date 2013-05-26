package com.model.dao;

import java.util.List;

import com.model.entity.FAQ;

public interface FAQDao {
	public List<FAQ> getFAQs();
	public boolean insert(FAQ faq);
	public boolean update(FAQ faq);
	public boolean delete(int id);
	public FAQ getFAQ(int id);
}
