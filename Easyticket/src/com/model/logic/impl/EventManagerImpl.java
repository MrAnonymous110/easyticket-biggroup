package com.model.logic.impl;

import java.util.List;

import com.model.dao.EventDao;
import com.model.dao.impl.EventDaoImpl;
import com.model.entity.Event;
import com.model.logic.EventManager;

public class EventManagerImpl implements EventManager {

	private EventDao dao;
	
	public EventManagerImpl()
	{
		 dao = new EventDaoImpl();
	}
	
	@Override
	public List<Event> getEvents() {
		return dao.getEvents();
	}

	@Override
	public boolean insert(Event e) {
		return dao.insert(e);
	}

	@Override
	public boolean update(Event e) {
		return dao.update(e);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public List<Event> findAll(String search, int cityId, int type, String orderBy) {
		String query = buildStringQuery(search, cityId,type, orderBy);
		return dao.findAll(query);
	}

	@Override
	public List<Event> findRange(String search, int cityId, int type, String orderBy, int start, int count) {
		String query = buildStringQuery(search, cityId,type, orderBy);
		return dao.findRange(query, start, count);
	}


	@Override
	public Event getEvent(int id) {
		return dao.getEvent(id);
	}
	
	
	public String buildStringQuery(String search,int cityId, int type, String orderBy)
	{
		 String query ="";
		 query = "from Event event where 1=1 ";
		 if(!"".equals(search)){
			 query += " and event.title like '%"+search+"%' ";
			 query += " and event.content like '%"+search+"%' ";
		 }
		 if(cityId > 0)
		 {
			 query += " and event.city.id="+cityId;
		 }
		 if(type > 0){
			 query += "and event.evenType.id="+type;
		 }
		 if(!"".equals(orderBy)){
			 query += " order by "+ orderBy;
		 }
		 return query;
	}

	public EventDao getDao() {
		return dao;
	}

	public void setDao(EventDao dao) {
		this.dao = dao;
	}

	

	
	
}
