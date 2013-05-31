package com.model.logic.impl;

import java.util.List;

import com.model.dao.CityDao;
import com.model.dao.impl.CityDaoImpl;
import com.model.entity.City;
import com.model.logic.CityManager;

public class CityManagerImpl implements CityManager {

	private CityDao dao;
	
	public CityManagerImpl()
	{
		dao  = new CityDaoImpl();
	}
	
	@Override
	public List<City> getCities() {
		return dao.getCities();
	}

	@Override
	public boolean insert(City city) {
		return dao.insert(city);
	}

	@Override
	public boolean update(City city) {
		return dao.update(city);
	}

	@Override
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public City getCity(int id) {
		return dao.getCity(id);
	}

	public CityDao getDao() {
		return dao;
	}

	public void setDao(CityDao dao) {
		this.dao = dao;
	}

	
	
}
