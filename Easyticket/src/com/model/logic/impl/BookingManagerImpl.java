package com.model.logic.impl;

import java.util.List;

import com.model.dao.BookingDao;
import com.model.dao.impl.BookingDaoImpl;
import com.model.entity.Booking;
import com.model.logic.BookingManager;

public class BookingManagerImpl implements BookingManager{

	BookingDao dao;
	
	public BookingManagerImpl()
	{
		dao = new BookingDaoImpl();
	}
	
	@Override
	public List<Booking> getBookings() {
		// TODO Auto-generated method stub
		return dao.getBookings();
	}

	@Override
	public boolean insert(Booking booking) {
		// TODO Auto-generated method stub
		return dao.insert(booking);
	}

	@Override
	public boolean update(Booking booking) {
		// TODO Auto-generated method stub
		return dao.update(booking);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public Booking getBooking(int id) {
		// TODO Auto-generated method stub
		return dao.getBooking(id);
	}

	@Override
	public List<Booking> getBookingByUser(int userId) {
		// TODO Auto-generated method stub
		return dao.getBookingByUser(userId);
	}

}
