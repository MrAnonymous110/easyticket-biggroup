package com.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.*;
import com.model.logic.CityManager;
import com.model.logic.EventManager;
import com.model.logic.EventTypeManager;
import com.model.logic.UsersManager;
import com.model.logic.impl.CityManagerImpl;
import com.model.logic.impl.EventManagerImpl;
import com.model.logic.impl.EventTypeManagerImpl;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.process.StringFormat;

public class AdminController extends ActionSupport implements
		ServletRequestAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2374872473535890284L;

	// manager object
	private UsersManager userMng;
	private EventManager eventMng;
	private EventTypeManager eventTypeMng;
	private CityManager cityMng;

	// login property
	private String username;
	private String password;

	// error message
	private String error;

	// page index
	private int p;
	// number row in a page
	private int rowNumber;
	// number page
	private int totalPage;

	// model entity
	private Users user;
	private Event event;
	private Seat seat;
	private Booking booking;
	private EventType eventType;

	// list model
	private List<Event> events;
	private List<City> cities;
	private List<Seat> seats;
	private List<Booking> bookings;
	private List<EventType> eventTypes;

	// event property
	private int eventId;
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

	// upload file
	private File image;
	private String imageContentType;
	private String imageFileName;
	private HttpServletRequest servletRequest;
	private Map<String, Object> session;

	public AdminController() {
		userMng = new UsersManagerImpl();
		eventMng = new EventManagerImpl();
		eventTypeMng = new EventTypeManagerImpl();
		cityMng = new CityManagerImpl();

		events = eventMng.findRange("", 0, 0, "", 0, 5);
		cities = cityMng.getCities();
		eventTypes = eventTypeMng.getEventTypes();
	}

	public String Index() {
		return isAuthorize() ? "success" : "input";
	}

	public String createEvent() {
		if (isAuthorize()) {
			try {
				event = new Event();

				if (image != null) {
					String filePath = servletRequest.getSession()
							.getServletContext().getRealPath("/")
							+ "images" + "/";

					File fileToCreate = new File(filePath, this.imageFileName);
					FileUtils.copyFile(this.image, fileToCreate);

					imgSrc = "/images/" + imageFileName;
					event.setImgSrc(imgSrc);
				}

				event.setTitle(title);
				event.setArtist(artist);
				event.setAddress(address);
				event.setContent(content);
				event.setCreateTime(new Date());
				
				event.setStartTime(new SimpleDateFormat("dd/MM/yyyy hh:mm")
							.parse(startTime));
				
				event.setEndTime(new SimpleDateFormat("dd/MM/yyyy hh:mm")
						.parse(endTime));
				EventType type = eventTypeMng.getEventType(eventTypeId);
				event.setEventType(type);
				City city = cityMng.getCity(cityId);
				event.setCity(city);
				eventMng.insert(event);

				return "success";
			} catch (ParseException e) {
				error = "Date format is invalid!";
				e.printStackTrace();
				return "input";
			}
			catch(Exception e){
				error = "Has error, create fail!";
				e.printStackTrace();
				return "input";
			}
		}
		return "login";
	}

	public String editEvent() {
		if (isAuthorize()) {
			event = eventMng.getEvent(eventId);
			return "success";
		}
		return "login";
	}
	
	public String newEvent() {
		if (isAuthorize()) {
			return "success";
		}
		return "login";
	}

	public String updateEvent() {
		if (isAuthorize()) {
			try {
				event = eventMng.getEvent(eventId);

				if (image != null) {
					String filePath = servletRequest.getSession()
							.getServletContext().getRealPath("/")
							+ "images" + "/";

					File fileToCreate = new File(filePath, this.imageFileName);
					FileUtils.copyFile(this.image, fileToCreate);

					imgSrc = "/images/" + imageFileName;
					event.setImgSrc(imgSrc);
				}

				event.setTitle(title);
				event.setArtist(artist);
				event.setAddress(address);
				event.setContent(content);
				event.setStartTime(new SimpleDateFormat("dd/MM/yyyy hh:mm")
						.parse(startTime));
				event.setEndTime(new SimpleDateFormat("dd/MM/yyyy hh:mm")
						.parse(endTime));
				EventType type = eventTypeMng.getEventType(eventTypeId);
				event.setEventType(type);
				City city = cityMng.getCity(cityId);
				event.setCity(city);
				eventMng.update(event);

				return "success";
			} catch (ParseException e) {
				error = "Date format is invalid!";
				e.printStackTrace();
				return "input";
			}
			catch(Exception e){
				error = "Has error,save fail!";
				e.printStackTrace();
				return "input";
			}
		}
		return "login";
	}

	public String deleteEvent() {
		if (isAuthorize()) {
			try {
				eventMng.delete(eventId);
				return "success";
			} catch (Exception e) {
				return "input";
			}
		}
		return "login";
	}

	public String listEvent() {
		if (isAuthorize()) {
			events = eventMng.getEvents();

			return "success";
		}
		return "login";
	}

	public String Login() {
		if (isAuthorize()) {
			return "success";
		} else if (username != null && password != null) {
			Users user = userMng.getUser(username,
					StringFormat.encryptMD5(password));
			if (user != null) {
				if (userMng.getRolesForUser(username).equals("admin")) {
					session.put("user", user);
					session.put("viewtime", new Date());
					return "success";
				}
				error = "This account has not access this admin page!";
			} else
				error = "Username or password is invalid!";
		}
		return "input";
	}

	public String Logout() {
		session = ActionContext.getContext().getSession();
		if (session != null && session.get("user") != null) {
			session.remove("user");
			session.remove("viewtime");
		}
		return "success";
	}

	private boolean isAuthorize() {
		session = ActionContext.getContext().getSession();
		if (session != null && session.get("user") != null) {
			Users user = (Users) session.get("user");
			if (userMng.getRolesForUser(user.getUserName()).equals("admin")) {

				return true;
			}
		}
		return false;

	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UsersManager getUserMng() {
		return userMng;
	}

	public void setUserMng(UsersManager userMng) {
		this.userMng = userMng;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public int getP() {
		return p;
	}

	public void setP(int p) {
		this.p = p;
	}

	public int getRowNumber() {
		return rowNumber;
	}

	public void setRowNumber(int rowNumber) {
		this.rowNumber = rowNumber;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	public Seat getSeat() {
		return seat;
	}

	public void setSeat(Seat seat) {
		this.seat = seat;
	}

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public EventType getEventType() {
		return eventType;
	}

	public void setEventType(EventType eventType) {
		this.eventType = eventType;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public List<City> getCities() {
		return cities;
	}

	public void setCities(List<City> cities) {
		this.cities = cities;
	}

	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

	public List<Booking> getBookings() {
		return bookings;
	}

	public void setBookings(List<Booking> bookings) {
		this.bookings = bookings;
	}

	public List<EventType> getEventTypes() {
		return eventTypes;
	}

	public void setEventTypes(List<EventType> eventTypes) {
		this.eventTypes = eventTypes;
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

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {
		this.servletRequest = arg0;

	}

}
