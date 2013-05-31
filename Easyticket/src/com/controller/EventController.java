package com.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.City;
import com.model.entity.Event;
import com.model.entity.EventType;
import com.model.logic.CityManager;
import com.model.logic.EventManager;
import com.model.logic.EventTypeManager;
import com.model.logic.impl.CityManagerImpl;
import com.model.logic.impl.EventManagerImpl;
import com.model.logic.impl.EventTypeManagerImpl;
import com.opensymphony.xwork2.ActionSupport;

public class EventController extends ActionSupport implements ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String title;
	private String artist;
	private String address;
	private int cityId;
	private String content;
	private int eventTypeId;
	private String startTime;
	private String endTime;
	private String imgSrc;
	private String createTime;
	
	private EventManager eventMng;
	private EventTypeManager eventTypeMng;
	private CityManager cityMng;
	private List<Event> events;
	private Event event;
	
	private File image;
	private String imageContentType;
	private String imageFileName;
	
	private String error;
	private HttpServletRequest servletRequest;
	
	public EventController()
	{
		eventMng = new EventManagerImpl();
	    eventTypeMng = new EventTypeManagerImpl();
	    cityMng = new CityManagerImpl();
	}
	
	public String createEvent()
	{	
	    try{	
               
	    	String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+"images"+"/";
	    	
            File fileToCreate = new File(filePath, this.imageFileName);
            FileUtils.copyFile(this.image, fileToCreate);
            
            imgSrc = "images/"+ imageFileName;
            Event event = new Event();
            event.setTitle(title);
            event.setArtist(artist);
            event.setAddress(address);
            event.setContent(content);
            event.setCreateTime(new Date());
            event.setStartTime(new SimpleDateFormat("dd/MM/yyyy hh:mm").parse(startTime));
            event.setEndTime(new SimpleDateFormat("dd/MM/yyyy hh:mm").parse(endTime));
            event.setImgSrc(imgSrc);
            EventType type = eventTypeMng.getEventType(eventTypeId);
            event.setEventType(type);
            City city = cityMng.getCity(cityId);
            event.setCity(city);
            eventMng.insert(event);
            
            return "success";
	    }
	    catch(Exception e)
	    {
	    	  e.printStackTrace();
	    	  error = "Can not insert";
	    	  return "input";
	    }
		
	}

	
	public String updateEvent()
	{
		try{	           
	    	String filePath = servletRequest.getSession().getServletContext().getRealPath("/")+"images"+"/";
	    	
            File fileToCreate = new File(filePath, this.imageFileName);
            FileUtils.copyFile(this.image, fileToCreate);
            
            imgSrc = "images/"+ imageFileName;
            Event event = eventMng.getEvent(id);
            event.setTitle(title);
            event.setArtist(artist);
            event.setAddress(address);
            event.setContent(content);
            event.setCreateTime(new Date());
            event.setStartTime(new SimpleDateFormat("dd/MM/yyyy hh:mm").parse(startTime));
            event.setEndTime(new SimpleDateFormat("dd/MM/yyyy hh:mm").parse(endTime));
            event.setImgSrc(imgSrc);
            EventType type = eventTypeMng.getEventType(eventTypeId);
            event.setEventType(type);
            City city = cityMng.getCity(cityId);
            event.setCity(city);
            eventMng.update(event);
            
            return "success";
	    }
	    catch(Exception e)
	    {
	    	  e.printStackTrace();
	    	  error = "Can not update";
	    	  return "input";
	    }		
		
	}

	public String deleteEvent()
	{
		try{
			eventMng.delete(id);
			return "success";
		}
		catch(Exception e){
			return "input";
		}
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

	public int getEventTypeId() {
		return eventTypeId;
	}

	public void setEventTypeId(int eventTypeId) {
		this.eventTypeId = eventTypeId;
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

	

	public EventManager getEventMng() {
		return eventMng;
	}

	public void setEventMng(EventManager eventMng) {
		this.eventMng = eventMng;
	}
	
	public EventTypeManager getEventTypeMng() {
		return eventTypeMng;
	}

	public void setEventTypeMng(EventTypeManager eventTypeMng) {
		this.eventTypeMng = eventTypeMng;
	}

	public CityManager getCityMng() {
		return cityMng;
	}

	public void setCityMng(CityManager cityMng) {
		this.cityMng = cityMng;
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

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.servletRequest = arg0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
}
