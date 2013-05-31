package com.model.logic;

import java.util.List;

import com.model.entity.EventType;

public interface EventTypeManager {

	public List<EventType> getEventTypes();
	public boolean insert(EventType eventType);
	public boolean update(EventType eventType);
	public boolean delete(int id);
	public EventType getEventType(int id);
	
}
