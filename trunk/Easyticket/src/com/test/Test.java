package com.test;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.model.dao.PaymentDao;
import com.model.dao.impl.PaymentDaoImpl;
import com.model.entity.Event;
import com.model.entity.Payment;
import com.model.logic.EventManager;
import com.model.logic.impl.EventManagerImpl;
import com.model.util.HibernateUtil;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
       
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery("from Event e where 1=1 and e.eventType.id = 4 order by e.createTime desc");
     
		List<Event> list = query.list();
		System.out.println(list.size());
		
	}

}
