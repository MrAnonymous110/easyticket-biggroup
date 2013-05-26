package com.model.dao;

import java.util.List;

import com.model.entity.Contact;

public interface ContactDao {
	public List<Contact> getContacts();
	public boolean insert(Contact contact);
	public boolean update(Contact contact);
	public boolean delete(int id);
	public Contact getContact(int id);
}
