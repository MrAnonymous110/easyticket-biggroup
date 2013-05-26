package com.model.dao;

import java.util.List;

import com.model.entity.Event;

public interface EventDao {
	public List<Event> getEvents();
	public boolean insert(Event event);
	public boolean update(Event event);
	public boolean delete(int id);
	public Event getEvent(int id);
}
