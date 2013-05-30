package com.controller;

import java.util.List;

import com.model.entity.Event;
import com.model.logic.EventManager;
import com.model.logic.impl.EventManagerImpl;

public class EventController  {

	private String title;
	private String artist;
	private String address;
	private int cityId;
	private String content;
	private int eventId;
	private String startTime;
	private String endTime;
	private String imgSrc;
	private String createTime;
	
	private EventManager mng;
	private List<Event> events;
	private Event event;
	
	public EventController()
	{
		mng = new EventManagerImpl();
		  
	}
	
	public String createEvent()
	{		
	    
		return "success";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getImgSrc() {
		return imgSrc;
	}

	public void setImgSrc(String imgSrc) {
		this.imgSrc = imgSrc;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public EventManager getMng() {
		return mng;
	}

	public void setMng(EventManager mng) {
		this.mng = mng;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
	
	
	
	
	
	
}
