package com.model.logic.impl;

import java.util.List;

import com.model.dao.PaymentDao;
import com.model.dao.impl.PaymentDaoImpl;
import com.model.entity.Payment;
import com.model.logic.PayManager;

public class PayManagerImpl implements PayManager{

	PaymentDao dao;
	
	public PayManagerImpl()
	{
		dao = new PaymentDaoImpl();
	}
	
	@Override
	public List<Payment> getPayments() {
		// TODO Auto-generated method stub
		return dao.getPayments();
	}

	@Override
	public boolean insert(Payment pay) {
		// TODO Auto-generated method stub
		return dao.insert(pay);
	}

	@Override
	public boolean update(Payment pay) {
		// TODO Auto-generated method stub
		return dao.update(pay);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public Payment getPayment(int id) {
		// TODO Auto-generated method stub
		return dao.getPayment(id);
	}

}
