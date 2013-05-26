package com.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.model.entity.*;
import com.model.logic.UsersManager;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.process.StringFormat;

public class AdminController extends ActionSupport {
    
	/**
	 * 
	 */
	private static final long serialVersionUID = 2374872473535890284L;
	
	private	UsersManager mng;
	
	private String username;
	private String password;
	private String error;
    
	// page index
	private int p;
	// number row in a page
	private int rowNumber;
	// number page
	private int totalPage;
    
    // model entity
    private Contact contact;
    private Users user;
    private City city;
    private Event event;
    private Seat seat;
    private Booking booking;
    private EventType eventType;
    private Payment payment;
    private FAQ faq;
    private Roles role;
    
    //list model
    private List<Contact> contacts;
    private List<Event>   events;
    private List<Users>   users;
    private List<City> cities;
    private List<Seat> seats;
    private List<Booking> bookings;
    private List<EventType> eventTypes;
    private List<Payment> payments;
    private List<FAQ> faqs;
    private List<Roles> roles;
    
    // search item
    
	
	public AdminController()
	{
	    mng = new UsersManagerImpl();
	}
	
	
	public String Index()
	{
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 if(session !=null && session.get("user") !=null)
		 {
			 Users user = (Users) session.get("user");
			 if(mng.getRolesForUser(user.getUserName()).equals("admin")){ 
				 return "success";
			 }
		 }
		 return "input";
	}
	
	
	public String Login()
	{
		 Map<String, Object> session = ActionContext.getContext().getSession();
		 if(session !=null && session.get("user") !=null){
			 Users user = (Users) session.get("user");
             if(mng.getRolesForUser(user.getUserName()).equals("admin")){ 			 
				 return "success";
			 }
		 }
		 if(username!=null && password !=null)
		 {	 
			 Users user = mng.getUser(username,StringFormat.encryptMD5(password));
			 if(user !=null){
				 if(mng.getRolesForUser(username).equals("admin"))
				 {
					 session.put("user", user);
					 session.put("viewtime", new Date());
					 return "success";
				 }
				 error = "This account has not access this admin page!";
			 }
			 else error = "Username or password is invalid!";
		 }
		 return "input";
	}

	public String Logout()
	{
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(session !=null && session.get("user") !=null){
			 session.remove("user");
			 session.remove("viewtime");
		}
		return "success";
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

	public UsersManager getMng() {
		return mng;
	}

	public void setMng(UsersManager mng) {
		this.mng = mng;
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


	public Contact getContact() {
		return contact;
	}


	public void setContact(Contact contact) {
		this.contact = contact;
	}


	public Users getUser() {
		return user;
	}


	public void setUser(Users user) {
		this.user = user;
	}


	public City getCity() {
		return city;
	}


	public void setCity(City city) {
		this.city = city;
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


	public Payment getPayment() {
		return payment;
	}


	public void setPayment(Payment payment) {
		this.payment = payment;
	}


	public FAQ getFaq() {
		return faq;
	}


	public void setFaq(FAQ faq) {
		this.faq = faq;
	}


	public Roles getRole() {
		return role;
	}


	public void setRole(Roles role) {
		this.role = role;
	}


	public List<Contact> getContacts() {
		return contacts;
	}


	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}


	public List<Event> getEvents() {
		return events;
	}


	public void setEvents(List<Event> events) {
		this.events = events;
	}


	public List<Users> getUsers() {
		return users;
	}


	public void setUsers(List<Users> users) {
		this.users = users;
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


	public List<Payment> getPayments() {
		return payments;
	}


	public void setPayments(List<Payment> payments) {
		this.payments = payments;
	}


	public List<FAQ> getFaqs() {
		return faqs;
	}


	public void setFaqs(List<FAQ> faqs) {
		this.faqs = faqs;
	}


	public List<Roles> getRoles() {
		return roles;
	}


	public void setRoles(List<Roles> roles) {
		this.roles = roles;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
}
