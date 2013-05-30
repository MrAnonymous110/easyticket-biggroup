package com.test;

import com.model.dao.PaymentDao;
import com.model.dao.impl.PaymentDaoImpl;
import com.model.entity.Payment;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
       
		  Payment pay = new Payment();
		  pay.setName("Bank's credit");
		  
		  PaymentDao dao = new PaymentDaoImpl();
		  dao.insert(pay);
		  System.out.println("ok");
	}

}
