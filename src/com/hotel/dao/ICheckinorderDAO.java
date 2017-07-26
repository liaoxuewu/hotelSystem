package com.hotel.dao;

import java.util.List;

import com.hotel.entity.Checkinorder;

public interface ICheckinorderDAO {

	public void save(Checkinorder transientInstance);
	public void delete(Checkinorder persistentInstance);
	public Checkinorder findById(java.lang.Integer id);
	public List findByExample(Checkinorder instance);
	public List findByProperty(String propertyName, Object value);
	public List findByRoomId(Object roomId);
	public List findByCustomeName(Object customeName);
	public List findByCustomerId(Object customerId);
	public List findByCustomePhoneNumber(Object customePhoneNumber);
	public List findAll();
	public Checkinorder merge(Checkinorder detachedInstance);
	
}
