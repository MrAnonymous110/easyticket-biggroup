package com.model.logic.impl;

import java.util.List;

import com.model.dao.SeatDao;
import com.model.dao.impl.SeatDaoImpl;
import com.model.entity.Seat;
import com.model.logic.SeatsManager;

public class SeatManagerImpl implements SeatsManager {

	SeatDao dao;
	public SeatManagerImpl() {
		dao = new SeatDaoImpl();
	}
	
	@Override
	public Seat getById(int id) {
		return dao.getSeat(id);
	}

	@Override
	public List<Seat> getAll() {
		return dao.getSeats();
	}
	@Override
	public boolean insert(Seat seat) {
		return dao.insert(seat);
	}

	@Override
	public boolean update(Seat seat) {
		return dao.update(seat);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	public SeatDao getDao() {
		return dao;
	}
	
	public void setDao(SeatDao dao) {
		this.dao = dao;
	}

	@Override
	public List<Seat> getSeatsByEvent(int eventId) {
		// TODO Auto-generated method stub
		return dao.getSeatsByEvent(eventId);
	}
}
