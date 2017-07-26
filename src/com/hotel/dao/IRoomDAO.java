package com.hotel.dao;

import java.util.List;

import com.hotel.entity.Room;

public interface IRoomDAO {
	public void save(Room transientInstance);
	public void delete(Room persistentInstance);
	public Room findById(java.lang.Integer id);
	public List findByExample(Room instance);
	public List findByLevel(Object level);
	public List findByType(Object type);
	public List findByStaus(Object staus);
	public List findByPrice(Object price);
	public List findByLocation(Object location);
	public List findAll();
	public Room merge(Room detachedInstance);
	
}
