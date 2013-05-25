package com.model.entity;

import javax.persistence.*;

@Entity
@Table(name="Booking")
public class Booking {
     
	public Booking()
    {}
	
	@Id 
	@GeneratedValue 
	@Column(name="Id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name="SeatId")
	private Seat seat;
	
	@Column(name="Count")
	private int count;
	
	@Column(name="Price")
	private double price;
	
	@ManyToOne
	@JoinColumn(name="UserId")
	private Users users;
	
	@ManyToOne
	@JoinColumn(name="PaymentId")
	private Payment payment;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Seat getSeat() {
		return seat;
	}

	public void setSeat(Seat seat) {
		this.seat = seat;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	
	
	
	
}
