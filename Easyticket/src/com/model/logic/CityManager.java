package com.model.logic;

import java.util.List;

import com.model.entity.City;

public interface CityManager {
    
	public List<City> getCities();
	public boolean insert(City city);
	public boolean update(City city);
	public boolean delete(int id);
	public City getCity(int id);
}
