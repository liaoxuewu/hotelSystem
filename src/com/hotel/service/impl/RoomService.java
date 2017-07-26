package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.hotel.dao.IRoomDAO;
import com.hotel.entity.Room;
import com.hotel.service.IRoomService;

public class RoomService implements IRoomService{

	@Resource
	private IRoomDAO roomDAO;
	public RoomService(){}
	
	public IRoomDAO getRoomDAO() {
		return roomDAO;
	}

	public void setRoomDAO(IRoomDAO roomDAO) {
		this.roomDAO = roomDAO;
	}

	public void save(Room transientInstance) {
		// TODO Auto-generated method stub
		roomDAO.save(transientInstance);
	}

	public void delete(Room persistentInstance) {
		// TODO Auto-generated method stub
		roomDAO.delete(persistentInstance);
	}

	public Room findById(Integer id) {
		// TODO Auto-generated method stub
		return roomDAO.findById(id);
	}

	public List findByExample(Room instance) {
		// TODO Auto-generated method stub
		return roomDAO.findByExample(instance);
	}

	public List findByLevel(Object level) {
		// TODO Auto-generated method stub
		return roomDAO.findByLevel(level);
	}

	public List findByType(Object type) {
		// TODO Auto-generated method stub
		return roomDAO.findByType(type);
	}

	public List findByStaus(Object staus) {
		// TODO Auto-generated method stub
		return roomDAO.findByStaus(staus);
	}

	public List findByPrice(Object price) {
		// TODO Auto-generated method stub
		return roomDAO.findByPrice(price);
	}

	public List findByLocation(Object location) {
		// TODO Auto-generated method stub
		return roomDAO.findByLocation(location);
	}

	public List findAll() {
		// TODO Auto-generated method stub
		return roomDAO.findAll();
	}

	public Room merge(Room detachedInstance) {
		// TODO Auto-generated method stub
		return roomDAO.merge(detachedInstance);
	}

}
