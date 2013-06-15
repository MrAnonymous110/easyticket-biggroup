package com.model.dao;

import java.util.List;

import com.model.entity.Booking;

public interface BookingDao {
	public List<Booking> getBookings();
	public boolean insert(Booking booking);
	public boolean update(Booking booking);
	public boolean delete(int id);
	public Booking getBooking(int id);
	
	public List<Booking> getBookingByUser(int userId);
}
