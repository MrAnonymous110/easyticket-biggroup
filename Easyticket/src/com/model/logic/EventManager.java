package com.model.logic;

import java.util.List;

import com.model.entity.Event;

public interface EventManager {
     
	public List<Event> getEvents();
	public boolean insert(Event e);
	public boolean update(Event e);
	public boolean delete(int id);
	public List<Event> findAll(String search, String cityId, int type, String orderBy);
	public List<Event> findRange(String search, String cityId ,int type, String orderBy,int start, int count);
	public Event getEvent(int id);
	
}
