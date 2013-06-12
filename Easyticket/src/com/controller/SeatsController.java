package com.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.model.entity.Event;
import com.model.entity.Seat;
import com.model.entity.Users;
import com.model.logic.SeatsManager;
import com.model.logic.UsersManager;
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
	private double price;
	private double discount;
	private int amountTicket;
	private String description;
	private Event event;

	// error message
	private String error;

	// entity
	private Seat seatEnt;

	// List model
	private List<Seat> seats;

	// manager object
	private SeatsManager seatMng;
	private UsersManager userMng;
	// session
	private Map<String, Object> session;

	public SeatsController() {
		seatMng = new SeatManagerImpl();
		userMng = new UsersManagerImpl();
	}

	public String listSeat() {
		if (isAuthorize()) {
			seats = seatMng.getAll();
			return "success";
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

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getAmountTicket() {
		return amountTicket;
	}

	public void setAmountTicket(int amountTicket) {
		this.amountTicket = amountTicket;
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

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	@Override
	public void setServletRequest(HttpServletRequest arg0) {

	}

}
