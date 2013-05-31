package com.model.logic.impl;

import java.util.List;

import com.model.dao.EventTypeDao;
import com.model.dao.impl.EventTypeDaoImpl;
import com.model.entity.EventType;
import com.model.logic.EventTypeManager;

public class EventTypeManagerImpl implements EventTypeManager{

	private EventTypeDao dao;
	
	public EventTypeManagerImpl()
	{
		dao = new EventTypeDaoImpl();
	}
	
	@Override
	public List<EventType> getEventTypes() {
	   return dao.getEventTypes(); 
	}

	@Override
	public boolean insert(EventType eventType) {
		return dao.insert(eventType);
	}

	@Override
	public boolean update(EventType eventType) {
		return dao.update(eventType);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public EventType getEventType(int id) {
		return dao.getEventType(id);
	}

	public EventTypeDao getDao() {
		return dao;
	}

	public void setDao(EventTypeDao dao) {
		this.dao = dao;
	}

	
}
