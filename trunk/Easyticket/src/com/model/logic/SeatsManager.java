/**
 * 
 */
package com.model.logic;

import com.model.entity.Seat;
import java.util.List;

public interface SeatsManager {
	public Seat getById(int id);

	public List<Seat> getAll();

	public boolean insert(Seat seat);

	public boolean update(Seat seat);

	public boolean delete(int id);

	public List<Seat> getSeatsByEvent(int eventId);
}
