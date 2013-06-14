package com.model.logic;

import java.util.List;

import com.model.entity.Payment;

public interface PayManager {
	public List<Payment> getPayments();
	public boolean insert(Payment pay);
	public boolean update(Payment pay);
	public boolean delete(int id);
	public Payment getPayment(int id);
}
