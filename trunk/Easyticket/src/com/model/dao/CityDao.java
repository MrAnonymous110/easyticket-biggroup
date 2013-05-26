package com.model.dao;

import java.util.List;

import com.model.entity.City;

public interface CityDao {
    
	public List<City> getCities();
	public boolean insert(City city);
	public boolean update(City city);
	public boolean delete(int id);
	public City getCity(int id);
}
