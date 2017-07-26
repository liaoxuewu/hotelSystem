package com.hotel.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.hotel.dao.ICheckinorderDAO;
import com.hotel.service.ICheckinorderService;

public class CheckinorderService implements ICheckinorderService{

	@Resource
	ICheckinorderDAO checkinorderDAO;
	
	public ICheckinorderDAO getCheckinorderDAO() {
		return checkinorderDAO;
	}

	public void setCheckinorderDAO(ICheckinorderDAO checkinorderDAO) {
		this.checkinorderDAO = checkinorderDAO;
	}

	public void save(com.hotel.entity.Checkinorder transientInstance) {
		// TODO Auto-generated method stub
		checkinorderDAO.save(transientInstance);
	}

	public void delete(com.hotel.entity.Checkinorder persistentInstance) {
		// TODO Auto-generated method stub
		checkinorderDAO.delete(persistentInstance);
	}

	public com.hotel.entity.Checkinorder findById(Integer id) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findById(id);
	}

	public List findByExample(com.hotel.entity.Checkinorder instance) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByExample(instance);
	}

	public List findByProperty(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByProperty(propertyName, value);
	}

	public List findByRoomId(Object roomId) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByRoomId(roomId);
	}

	public List findByCustomeName(Object customeName) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByCustomeName(customeName);
	}

	public List findByCustomerId(Object customerId) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByCustomerId(customerId);
	}

	public List findByCustomePhoneNumber(Object customePhoneNumber) {
		// TODO Auto-generated method stub
		return checkinorderDAO.findByCustomePhoneNumber(customePhoneNumber);
	}

	public List findAll() {
		// TODO Auto-generated method stub
		return checkinorderDAO.findAll();
	}

	public com.hotel.entity.Checkinorder merge(
			com.hotel.entity.Checkinorder detachedInstance) {
		// TODO Auto-generated method stub
		return checkinorderDAO.merge(detachedInstance);
	}

}
