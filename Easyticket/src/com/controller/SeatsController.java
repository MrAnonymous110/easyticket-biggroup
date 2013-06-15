package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.Event;
import com.model.entity.Seat;
import com.model.entity.Users;
import com.model.logic.EventManager;
import com.model.logic.SeatsManager;
import com.model.logic.UsersManager;
import com.model.logic.impl.EventManagerImpl;
import com.model.logic.impl.SeatManagerImpl;
import com.model.logic.impl.UsersManagerImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SeatsController extends ActionSupport implements
		ServletRequestAware {

	private static final long serialVersionUID = 1L;

	// Seat Properties
	private Integer id;
	private String seat;
	private String price;
	private String discount;
	private String amountTicket;
	private String description;
	private Event event;
	private int eventId;

	// error message
	private String error;

	// seat entity
	private Seat s;

	// List model
	private List<Seat> seats;
	private List<Event> events;

	// manager object
	private SeatsManager seatMng;
	private UsersManager userMng;
	private EventManager eventMng;
	// session
	private Map<String, Object> session;

	public SeatsController() {
		seatMng = new SeatManagerImpl();
		userMng = new UsersManagerImpl();
		eventMng = new EventManagerImpl();
	}

	public String listSeat() {
		if (isAuthorize()) {
			setSeats(seatMng.getAll());
			setEvents(eventMng.getEvents());
			return "success";
		}
		return "login";
	}

	public String createSeat() {
		if (isAuthorize()) {
			try {
				s = new Seat();
				s.setAmountTicket(Integer.parseInt(amountTicket));
				s.setDiscount(Double.parseDouble(discount));
				s.setDescription(description);
				s.setPrice(Double.parseDouble(price));
				event = eventMng.getEvent(eventId);
				s.setEvent(event);
				s.setSeat(seat);
				boolean isok = seatMng.insert(s);
				if (!isok) {
					error = "can not create, has some error while insert data";
					setSeats(seatMng.getAll());
					setEvents(eventMng.getEvents());
					return "input";
				}
				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				error = "can not create,input data not true";
				setSeats(seatMng.getAll());
				setEvents(eventMng.getEvents());
				return "input";
			}
		}
		return "login";

	}

	public String deleteSeat() {
		if (isAuthorize()) {
			seatMng.delete(id);
			return "success";
		}
		return "login";

	}

	public String updateSeat() {
		if (isAuthorize()) {
			try {
				s = new Seat();
				s.setId(id);
				s.setAmountTicket(Integer.parseInt(amountTicket));
				s.setDiscount(Double.parseDouble(discount));
				s.setDescription(description);
				s.setPrice(Double.parseDouble(price));
				event = eventMng.getEvent(eventId);
				s.setEvent(event);
				s.setSeat(seat);
				boolean isok = seatMng.update(s);
				if (!isok) {
					error = "can not update, has some error while insert data";
					setSeats(seatMng.getAll());
					setEvents(eventMng.getEvents());
					return "input";
				}
				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				error = "can not update,input data not true";
				setSeats(seatMng.getAll());
				setEvents(eventMng.getEvents());
				return "input";
			}
		}
		return "login";
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSeat() {
		return seat;
	}

	public void setSeat(String seat) {
		this.seat = seat;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {

	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public List<Seat> getSeats() {
		return seats;
	}

	public void setSeats(List<Seat> seats) {
		this.seats = seats;
	}

	public List<Event> getEvents() {
		return events;
	}

	public void setEvents(List<Event> events) {
		this.events = events;
	}

	public EventManager getEventMng() {
		return eventMng;
	}

	public void setEventMng(EventManager eventMng) {
		this.eventMng = eventMng;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public Seat getS() {
		return s;
	}

	public void setS(Seat s) {
		this.s = s;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getAmountTicket() {
		return amountTicket;
	}

	public void setAmountTicket(String amountTicket) {
		this.amountTicket = amountTicket;
	}

	public SeatsManager getSeatMng() {
		return seatMng;
	}

	public void setSeatMng(SeatsManager seatMng) {
		this.seatMng = seatMng;
	}

	public UsersManager getUserMng() {
		return userMng;
	}

	public void setUserMng(UsersManager userMng) {
		this.userMng = userMng;
	}

}
