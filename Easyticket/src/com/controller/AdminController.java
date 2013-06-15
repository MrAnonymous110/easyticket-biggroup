package com.controller;

import java.io.File;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.*;
import com.model.logic.CityManager;
import com.model.logic.ContactManager;
import com.model.logic.EventManager;
import com.model.logic.EventTypeManager;
import com.model.logic.FAQManager;
import com.model.logic.PayManager;
import com.model.logic.UsersManager;
import com.model.logic.impl.CityManagerImpl;
import com.model.logic.impl.ContactManagerImpl;
import com.model.logic.impl.EventManagerImpl;
import com.model.logic.impl.EventTypeManagerImpl;
import com.model.logic.impl.FAQManagerImpl;
import com.model.logic.impl.PayManagerImpl;
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
	private PayManager payMng;
	private ContactManager contactMng;
	private FAQManager faqMng;

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
	private City city;
	private Payment pay;
	private Contact contact;
	private FAQ faq;

	// list model
	private List<Event> events;
	private List<City> cities;
	private List<Seat> seats;
	private List<Booking> bookings;
	private List<EventType> eventTypes;
	private List<Payment> pays;
    private List<Contact> contacts;
    private List<FAQ> faqs;
	
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
	
	// event type property
	private int typeId;
	private String typeName;

	// upload file
	private File image;
	private String imageContentType;
	private String imageFileName;
	private HttpServletRequest servletRequest;
	private Map<String, Object> session;

	//pay property
	private int payId;
	
	//contact property
	private int contactId;
	private String isReply;
	private String contactReply;

	//faq property
	private int faqId;
	private String faqQuestion;
	private String faqAnswer;
	
	public AdminController() {
		userMng = new UsersManagerImpl();
		eventMng = new EventManagerImpl();
		eventTypeMng = new EventTypeManagerImpl();
		cityMng = new CityManagerImpl();
		payMng = new PayManagerImpl();
		contactMng = new ContactManagerImpl();
		faqMng = new FAQManagerImpl();

		events = eventMng.findRange("", "", 0, "", 0, 5);
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
            
			for(Event e : events)
			{
				e.setContent(e.getContent().substring(0, 50)+"...");
			}
			
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

	public String listTypes()
	{
		if(isAuthorize())
		{
			eventTypes =  eventTypeMng.getEventTypes();
			return "success";
		}
		return "login";
	}
	
	public String deleteType()
	{
		if(isAuthorize())
		{
			eventTypeMng.delete(typeId);
			return "success";
		}
		return "login";
	}
	
	public String updateType()
	{
		if(isAuthorize())
		{
			eventTypeMng.update(eventType);
			return "success";
		}
		return "login";
	}
	
	public String insertType()
	{

		if(isAuthorize())
		{
			eventTypeMng.insert(eventType);
			return "success";
		}
		return "login";
	}
	
	public String listCity()
	{
		if(isAuthorize())
		{
			cities = cityMng.getCities();
			return "success";
		}
		return "login";
	}
	
	public String insertCity()
	{
		if(isAuthorize())
		{
			cityMng.insert(city);
			return "success";
		}
		return "login";
	}
	
	public String updateCity()
	{
		if(isAuthorize())
		{
		    cityMng.update(city);
			return "success";
		}
		return "login";
	}
	
	public String deleteCity()
	{
		if(isAuthorize())
		{
			cityMng.delete(cityId);
			return "success";
		}
		return "login";
	}
	
	public String payment()
	{
		if(isAuthorize())
		{
			pays = payMng.getPayments();
			return "success";
		}
		return "login";
	}
	
	public String insertPay()
	{
		if(isAuthorize())
		{
			payMng.insert(pay);
			return "success";
		}
		return "login";
	}
	
	public String updatePay()
	{
		if(isAuthorize())
		{
			payMng.update(pay);
			return "success";
		}
		return "login";
	}
	
	public String deletePay()
	{
		if(isAuthorize())
		{
			payMng.delete(payId);
			return "success";
		}
		return "login";
	}
	
	public String listContact()
	{
		if(isAuthorize())
		{
		    contacts = contactMng.getContacts(isReply);
			return "success";
		}
		return "login";
	}
	
	public String deleteContact()
	{
		if(isAuthorize())
		{
		    contactMng.delete(contactId);
			return "success";
		}
		return "login";
	}
	
	public String replyContact()
	{
		if(isAuthorize())
		{
			// code send mail to here
			contact = contactMng.getContact(contactId);
			contact.setAnswer(contactReply);
		    contactMng.update(contact);
			return "success";
		}
		return "login";
	}
	
	public String listFaq()
	{
		if(isAuthorize())
		{
			faqs = faqMng.getFAQs();
			return "success";
		}
		return "login";
	}
	
	public String insertFaq()
	{
		if(isAuthorize())
		{
			FAQ item = new FAQ();
			item.setAnswer(faqAnswer);
			item.setQuestion(faqQuestion);
			item.setCreateTime(new Date());
			faqMng.insert(item);
			return "success";
		}
		return "login";
	}
	
	public String updateFaq()
	{
		if(isAuthorize())
		{
			FAQ item = faqMng.getFAQ(faqId);
			item.setAnswer(faqAnswer);
			item.setQuestion(faqQuestion);
			faqMng.update(item);
			return "success";
		}
		return "login";
	}
	
	public String deleteFaq()
	{
		if(isAuthorize())
		{
			faqMng.delete(faqId);
			return "success";
		}
		return "login";
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

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public PayManager getPayMng() {
		return payMng;
	}

	public void setPayMng(PayManager payMng) {
		this.payMng = payMng;
	}

	public Payment getPay() {
		return pay;
	}

	public void setPay(Payment pay) {
		this.pay = pay;
	}

	public List<Payment> getPays() {
		return pays;
	}

	public void setPays(List<Payment> pays) {
		this.pays = pays;
	}

	public int getPayId() {
		return payId;
	}

	public void setPayId(int payId) {
		this.payId = payId;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}

	public int getContactId() {
		return contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}

	public ContactManager getContactMng() {
		return contactMng;
	}

	public void setContactMng(ContactManager contactMng) {
		this.contactMng = contactMng;
	}

	public String isReply() {
		return isReply;
	}

	public void setReply(String isReply) {
		this.isReply = isReply;
	}

	public String getContactReply() {
		return contactReply;
	}

	public void setContactReply(String contactReply) {
		this.contactReply = contactReply;
	}

	public FAQManager getFaqMng() {
		return faqMng;
	}

	public void setFaqMng(FAQManager faqMng) {
		this.faqMng = faqMng;
	}

	public FAQ getFaq() {
		return faq;
	}

	public void setFaq(FAQ faq) {
		this.faq = faq;
	}

	public int getFaqId() {
		return faqId;
	}

	public void setFaqId(int faqId) {
		this.faqId = faqId;
	}

	public String getFaqQuestion() {
		return faqQuestion;
	}

	public void setFaqQuestion(String faqQuestion) {
		this.faqQuestion = faqQuestion;
	}

	public String getFaqAnswer() {
		return faqAnswer;
	}

	public void setFaqAnswer(String faqAnswer) {
		this.faqAnswer = faqAnswer;
	}

	public List<FAQ> getFaqs() {
		return faqs;
	}

	public void setFaqs(List<FAQ> faqs) {
		this.faqs = faqs;
	}

	
}
