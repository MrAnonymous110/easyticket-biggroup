package com.model.dao;

import java.util.List;

import com.model.entity.Seat;

public interface SeatDao {
	public List<Seat> getSeats();
	public boolean insert(Seat seat);
	public boolean update(Seat seat);
	public boolean delete(int id);
	public Seat getSeat(int id);
	public List<Seat> getSeatsByEvent(int eventId);
}
