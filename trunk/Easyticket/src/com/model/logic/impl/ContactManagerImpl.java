package com.model.logic.impl;

import java.util.List;

import com.model.dao.ContactDao;
import com.model.dao.impl.ContactDaoImpl;
import com.model.entity.Contact;
import com.model.logic.ContactManager;

public class ContactManagerImpl implements ContactManager {
    
	ContactDao dao;
	
	public ContactManagerImpl()
	{
		dao = new ContactDaoImpl();
	}
	
	@Override
	public List<Contact> getContacts(String isReply) {
		// TODO Auto-generated method stub
		return dao.getContacts(isReply);
	}

	@Override
	public boolean insert(Contact contact) {
		// TODO Auto-generated method stub
		return dao.insert(contact);
	}

	@Override
	public boolean update(Contact contact) {
		// TODO Auto-generated method stub
		return dao.update(contact);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return dao.delete(id);
	}

	@Override
	public Contact getContact(int id) {
		// TODO Auto-generated method stub
		return dao.getContact(id);
	}
   
}
