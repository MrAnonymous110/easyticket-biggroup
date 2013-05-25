package com.model.entity;

import javax.persistence.*;

@Entity
@Table(name="Seat")
public class Seat {

	public Seat(){}
	
	@Id
	@GeneratedValue
	@Column(name="Id")
    private Integer id;
    
    @Column(name="Seat")
    private String seat;
    
    @Column(name="Price")
    private double price;
    
    @Column(name="AmountTicket")
    private int amountTicket;
    
    @Column(name="Description",length=100,nullable=true)
    private String description;

    @ManyToOne
    @JoinColumn(name="EventId")
    private Event event;

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
    
    
}
