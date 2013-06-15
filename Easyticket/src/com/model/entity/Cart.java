package com.model.entity;

import java.io.Serializable;

public class Cart implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Seat seat;
	
	private Event event;
	
	private int number;
	
	private double money;
	
	private double price;
	
	private double priceDiscount;

	/**
	 * @return the seat
	 */
	public Seat getSeat() {
		return seat;
	}

	/**
	 * @param seat the seat to set
	 */
	public void setSeat(Seat seat) {
		this.seat = seat;
	}

	/**
	 * @return the number
	 */
	public int getNumber() {
		return number;
	}

	/**
	 * @param number the number to set
	 */
	public void setNumber(int number) {
		this.number = number;
	}

	/**
	 * @return the money
	 */
	public double getMoney() {
		return getPriceDiscount()*number;
	}

	/**
	 * @param money the money to set
	 */
	public void setMoney(double money) {
		this.money = money;
	}

	/**
	 * @return the price
	 */
	public double getPrice() {
		return seat.getPrice();
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}

	/**
	 * @return the priceDiscount
	 */
	public double getPriceDiscount() {
		return seat.getPrice() - seat.getPrice()*seat.getDiscount()/100 ;
	}

	/**
	 * @param priceDiscount the priceDiscount to set
	 */
	public void setPriceDiscount(double priceDiscount) {
		this.priceDiscount = priceDiscount;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
	
	
	 
}
